import 'package:bm_app/controllers/task_controller.dart';
import 'package:bm_app/models/company/company.dart';
import 'package:bm_app/ui/home/widgets/selection_button.dart';
import 'package:bm_app/ui/home/widgets/staffs_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../datasource/firebase_datasource.dart';
import '../../../models/staff/staff.dart';

class AddTaskScreen extends ConsumerStatefulWidget {
  const AddTaskScreen({super.key, required this.company, required this.staff, required this.uid});

  final Company company;
  final Staff staff;
  final String uid;

  @override
  ConsumerState<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends ConsumerState<AddTaskScreen> {
  final _taskTitleController = TextEditingController();
  final _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final taskState = ref.watch(taskStateProvider);
    final requester = taskState.requester;
    final manager = taskState.personInCharger;
    final requesterId = taskState.requesterId;
    final personInChargerId = taskState.personInChargerId;

    return Scaffold(
      appBar: AppBar(
        title: Text('タスクを作成'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "タスク名を入力"),
                  controller: _taskTitleController,
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 170,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextField(
                    decoration: const InputDecoration(labelText: "備考"),
                    keyboardType: TextInputType.multiline,
                    controller: _noteController,
                    maxLines: null,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SelectionButton(
            request: '依頼者',
            state: requester,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return StaffsListScreen(
                    companyId: widget.company.id,
                    isBool: false,
                  );
                }),
              );
            },
          ),
          SelectionButton(
            request: '担当者',
            state: manager,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return StaffsListScreen(
                    companyId: widget.company.id,
                    isBool: true,
                  );
                }),
              );
            },
          ),
          const SizedBox(
            height: 90,
          ),
          InkWell(
            onTap: () async {
              await ref.read(taskStateProvider.notifier).createTask(
                    companyId: widget.company.id,
                    uid: widget.uid,
                    taskTitle: _taskTitleController.text,
                    note: _noteController.text,
                    requesterId: requesterId,
                    personInChargerId: personInChargerId,
                  );

              Navigator.of(context).pop();
            },
            child: Container(
              width: 250,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                color: Colors.blue,
              ),
              child: const Text(
                '作成',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

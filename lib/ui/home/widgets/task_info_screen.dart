import 'package:bm_app/controllers/task_controller.dart';
import 'package:bm_app/providers/staff_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/task/task.dart';

class TaskInfoScreen extends ConsumerStatefulWidget {
  const TaskInfoScreen({
    super.key,
    required this.task,
    required this.companyId,
    required this.uid,
  });

  final Task task;
  final String companyId;
  final String uid;

  @override
  ConsumerState<TaskInfoScreen> createState() => _TaskInfoScreenState();
}

class _TaskInfoScreenState extends ConsumerState<TaskInfoScreen> {
  @override
  Widget build(BuildContext context) {
    final staff = ref.watch(staffInfoProvider(StaffInfoState(uid: widget.task.requesterId, companyId: widget.companyId)));
    return Dialog(
      child: SizedBox(
        height: 400,
        width: 400,
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.task.taskTitle,
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              'メモ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: Container(
                child: Text(
                  widget.task.note,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            staff.when(
              data: (staff) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '依頼者：',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      staff.staffInfo.name,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                );
              },
              error: (e, _) => Text('Error'),
              loading: () => CircularProgressIndicator(),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        "本当にタスクを消去しますか？",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: const Text("Cancel"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: const Text("OK"),
                          onPressed: () async {
                            await ref.read(taskStateProvider.notifier).deleteTask(
                                  companyId: widget.companyId,
                                  uid: widget.uid,
                                  taskId: widget.task.id,
                                );
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
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
                  'タスクを消去',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

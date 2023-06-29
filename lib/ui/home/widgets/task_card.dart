import 'package:bm_app/ui/home/widgets/task_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/task/task.dart';

class TaskCard extends ConsumerWidget {
  const TaskCard({
    super.key,
    required this.task,
    required this.companyId,
    required this.uid,
  });

  final Task task;
  final String companyId;
  final String uid;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return TaskInfoScreen(
                task: task,
                companyId: companyId,
                uid: uid,
              );
            });
      },
      child: Center(
        child: SizedBox(
          height: 100,
          width: 350,
          child: Card(
            color: Colors.blue[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  task.taskTitle,
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

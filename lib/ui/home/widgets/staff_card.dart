import 'package:bm_app/controllers/task_controller.dart';
import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/staff/staff.dart';

class StaffCard extends ConsumerWidget {
  const StaffCard({
    super.key,
    required this.staff,
    required this.onPressed,
  });

  final StaffInfo staff;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      child: InkWell(
        onTap: () {
          onPressed();
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    staff.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

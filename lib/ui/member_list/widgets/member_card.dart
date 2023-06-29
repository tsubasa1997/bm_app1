import 'package:bm_app/models/staff_info/staff_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/staff/staff.dart';

class MemberCard extends ConsumerWidget {
  const MemberCard({super.key,required this.staffInfo,});

  final StaffInfo staffInfo;

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
                    staffInfo.name,
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
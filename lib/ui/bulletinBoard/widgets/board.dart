import 'package:bm_app/providers/staff_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/board/board.dart';

class BoardCard extends ConsumerWidget {
  const BoardCard({
    super.key,
    required this.board,
    required this.companyId,
  });

  final Board board;
  final String companyId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staff = ref.watch(staffInfoProvider(StaffInfoState(uid: board.creatorId, companyId: companyId)));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          color: Colors.grey[300],
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(
                  20,
                ),
                color: Colors.white,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'title： ${board.title}',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    staff.when(
                      data: (staff) {
                        return Text(
                          'from: ${staff.staffInfo.name}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        );
                      },
                      error: (e, _) => Text('Error'),
                      loading: () => CircularProgressIndicator(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 2,
                  bottom: 20,
                ),
                color: Colors.white,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${board.content}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

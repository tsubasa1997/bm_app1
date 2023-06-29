import 'package:bm_app/providers/board_provider.dart';
import 'package:bm_app/ui/bulletinBoard/widgets/board.dart';
import 'package:bm_app/ui/bulletinBoard/widgets/create_board.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/ref_company_provider.dart';
import '../../providers/staff_info_provider.dart';

class BoardScreen extends ConsumerStatefulWidget {
  const BoardScreen({
    super.key,
    required this.uid,
  });

  final String uid;

  @override
  ConsumerState<BoardScreen> createState() => _BoardScreenState();
}

class _BoardScreenState extends ConsumerState<BoardScreen> {
  @override
  Widget build(BuildContext context) {
    final company = ref.watch(refCompanyProvider(widget.uid));
    return company.when(
      data: (company) {
        final staff = ref.watch(staffInfoProvider(StaffInfoState(uid: widget.uid, companyId: company.id)));
        final board = ref.watch(boardProvider(company.id));
        return staff.when(
          data: (staff) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('掲示板'),
              ),
              floatingActionButton: FloatingActionButton(
                child: const Icon(
                  Icons.create,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return CreateBoard(
                        uid: widget.uid,
                        companyId: company.id,
                      );
                    }),
                  );
                },
              ),
              body: board.when(
                data: (company) {
                  return ListView.builder(
                    itemCount: company.board.length,
                    itemBuilder: (context, index) => BoardCard(
                      board: company.board[index],
                      companyId: company.id,
                    ),
                  );
                },
                error: (e, _) => Container(),
                loading: () => CircularProgressIndicator(),
              ),
            );
          },
          error: (e, _) => Text('Error'),
          loading: () => CircularProgressIndicator(),
        );
      },
      error: (e, _) => Text('error'),
      loading: () => CircularProgressIndicator(),
    );
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

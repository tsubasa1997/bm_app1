import 'package:bm_app/ui/member_list/widgets/member_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/ref_company_provider.dart';
import '../../providers/staffs_provider.dart';

class MemberListScreen extends ConsumerStatefulWidget {
  const MemberListScreen({
    super.key,
    required this.uid,
  });

  final String uid;

  @override
  ConsumerState<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends ConsumerState<MemberListScreen> {
  @override
  Widget build(BuildContext context) {
    final company = ref.watch(refCompanyProvider(widget.uid));
    return company.when(
      data: (company) {
        final staffs = ref.watch(staffsProvider(company.id));
        return staffs.when(
          data: (staffs) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('スタッフリスト'),
                leading: Text(''),
              ),
              body: ListView.builder(
                itemCount: staffs.staffInfo.length,
                itemBuilder: (context, index) {
                  return MemberCard(
                    staffInfo: staffs.staffInfo[index],
                  );
                },
              ),
            );
          },
          error: (e, _) => const Text('Error'),
          loading: () => const CircularProgressIndicator(),
        );
      },
      error: (e, _) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text('Error'),
          ),
        );
      },
      loading: () => CircularProgressIndicator(),
    );
  }
}

import 'package:bm_app/controllers/task_controller.dart';
import 'package:bm_app/models/company/company.dart';
import 'package:bm_app/providers/staffs_provider.dart';
import 'package:bm_app/ui/home/widgets/staff_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StaffsListScreen extends ConsumerStatefulWidget {
  const StaffsListScreen({
    super.key,
    required this.companyId,
    required this.isBool,
  });

  final String companyId;
  final bool isBool;


  @override
  ConsumerState<StaffsListScreen> createState() => _StaffsListScreenState();
}

class _StaffsListScreenState extends ConsumerState<StaffsListScreen> {
  @override
  Widget build(BuildContext context) {
    final company = ref.watch(staffsProvider(widget.companyId));
    return company.when(
      data: (company) {
        return Scaffold(
          appBar: AppBar(
            title: Text('StaffList'),
          ),
          body: ListView.builder(
            itemCount: company.staffInfo.length,
            itemBuilder: (context, index) {
              return StaffCard(
                staff: company.staffInfo[index],
                onPressed: () {
                  if(widget.isBool != true){
                    ref.read(taskStateProvider.notifier).changeRequester(staffInfo: company.staffInfo[index],);
                    Navigator.of(context).pop();
                  }else{
                    ref.read(taskStateProvider.notifier).changePersonInChargerId(staffInfo: company.staffInfo[index],);
                    Navigator.of(context).pop();
                  }
                },
              );
            },
          ),
        );
      },
      error: (e, _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('Error'),
          ),
        );
      },
      loading: () => CircularProgressIndicator(),
    );
  }
}

import 'package:bm_app/providers/ref_company_provider.dart';
import 'package:bm_app/providers/staff_info_provider.dart';
import 'package:bm_app/providers/task_provider.dart';
import 'package:bm_app/ui/home/widgets/add_task_screeen.dart';
import 'package:bm_app/ui/home/widgets/task_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    super.key,
    required this.uid,
  });

  final String uid;

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final company = ref.watch(refCompanyProvider(widget.uid));
    return company.when(
      data: (company) {
        final staff = ref.watch(staffInfoProvider(StaffInfoState(uid: widget.uid, companyId: company.id)));
        return staff.when(
          data: (staff) {
            final tasks = ref.watch(taskProvider(TaskState(staffId: staff.id, companyId: company.id)));
            return Scaffold(
              appBar: AppBar(
                title: Text('タスク'),
                leading: Text(''),
              ),
              floatingActionButton: FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return AddTaskScreen(
                        company: company,
                        staff: staff,
                        uid: widget.uid,
                      );
                    }),
                  );
                },
              ),
              body: ListView(
                children: [
                  Column(
                    children: [
                      tasks.when(
                        data: (staff) {
                          return ListView.builder(
                            shrinkWrap: true,
                            itemCount: staff.task.length,
                            itemBuilder: (context, index) {
                              return TaskCard(task: staff.task[index], companyId: staff.staffInfo.companyId, uid: widget.uid,);
                            },
                          );
                        },
                        error: (e, _) => Text('Error'),
                        loading: () => CircularProgressIndicator(),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
          error: (e, _) => Text('Error'),
          loading: () => CircularProgressIndicator(),
        );
      },
      error: (e, _) => Text('Error'),
      loading: () => CircularProgressIndicator(),
    );
  }
}

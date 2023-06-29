import 'package:bm_app/providers/staff_info_provider.dart';
import 'package:bm_app/ui/calendar/widgets/create_appointment_dialog.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import '../../providers/appointment_provider.dart';
import '../../providers/ref_company_provider.dart';

class CalenderScreen extends ConsumerStatefulWidget {
  const CalenderScreen({
    super.key,
    required this.uid,
  });

  final String uid;

  @override
  ConsumerState<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends ConsumerState<CalenderScreen> {
  late _AppointmentDataSource appointmentDataSource;

  @override
  void initState() {
    super.initState();
    appointmentDataSource = _AppointmentDataSource([]);
  }

  @override
  Widget build(BuildContext context) {
    final company = ref.watch(refCompanyProvider(widget.uid));
    return company.when(
      data: (company) {
        final staff = ref.watch(staffInfoProvider(StaffInfoState(
          uid: widget.uid,
          companyId: company.id,
        )));
        return staff.when(
          data: (staff) {
            final appointments = ref.watch(listenAppointmentProvider(AppointmentState(uid: widget.uid, companyId: staff.staffInfo.companyId)));

            return DefaultTabController(
              initialIndex: 0, // 最初に表示するタブ
              length: 3, // タブの数
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  child: const Icon(Icons.add),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return CreateAppointmentDialog(
                            uid: widget.uid,
                            companyId: company.id,
                          );
                        });
                  },
                ),
                appBar: AppBar(
                  leading: const SizedBox(),
                  title: Text('カレンダー'),
                  bottom: const TabBar(
                    tabs: <Widget>[
                      Tab(text: 'Today'),
                      Tab(text: 'Week'),
                      Tab(text: 'Month'),
                    ],
                  ),
                ),
                body: appointments.when(
                  data: (appointment) {
                    final appointData = appointment;
                    //appointmentDataSource.appointments = appointData;

                    appointmentDataSource = _AppointmentDataSource(appointData);

                    // _AppointmentDataSource getAppointments(List<Appointment> appointment) {
                    //   List<Appointment> appointments = <Appointment>[];
                    //   appointments.addAll(appointment);
                    //   return _AppointmentDataSource(appointments);
                    // }

                    return TabBarView(
                      children: <Widget>[
                        SfCalendar(
                          view: CalendarView.day,
                          dataSource: appointmentDataSource,
                        ),
                        SfCalendar(
                          view: CalendarView.week,
                          dataSource: appointmentDataSource,
                        ),
                        SfCalendar(
                          view: CalendarView.month,
                          dataSource: appointmentDataSource,
                        ),
                      ],
                    );
                  },
                  error: (e, _) => Text('Error'),
                  loading: () => CircularProgressIndicator(),
                ),
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

class _AppointmentDataSource extends CalendarDataSource {
  _AppointmentDataSource(List<Appointment> source) {
    appointments = source;
  }

}

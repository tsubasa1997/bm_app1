import 'package:bm_app/Navigater_screen.dart';
import 'package:bm_app/controllers/appointment_controller.dart';
import 'package:bm_app/ui/calendar/calendar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CreateAppointmentDialog extends ConsumerStatefulWidget {
  const CreateAppointmentDialog({
    super.key,
    required this.uid,
    required this.companyId,
  });

  final String uid;
  final String companyId;

  @override
  ConsumerState<CreateAppointmentDialog> createState() => _CreateAppointmentDialogState();
}

class _CreateAppointmentDialogState extends ConsumerState<CreateAppointmentDialog> {
  final _subjectController = TextEditingController();
  final _memoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final appointmentState = ref.watch(appointmentProvider);
    final appointColor = appointmentState.color;
    final startTime = appointmentState.startTime;
    final endTime = appointmentState.endTime;

    return Dialog(
      child: SizedBox(
        height: 600,
        width: 400,
        child: Column(
          children: [
            const Text(
              '予定を入力',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                decoration: const InputDecoration(labelText: "タイトルを入力"),
                controller: _subjectController,
                keyboardType: TextInputType.text,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height:120,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: const InputDecoration(labelText: "メモ"),
                  controller: _memoController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '日時を選択してください',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Start Time :',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    DatePicker.showDateTimePicker(context, showTitleActions: true, minTime: DateTime.now(), maxTime: DateTime(2023, 12, 31, 11, 22), onChanged: (date) {
                      ref.read(appointmentProvider.notifier).editStartTime(time: date);
                    }, onConfirm: (date) {
                      ref.read(appointmentProvider.notifier).editStartTime(time: date);
                    }, currentTime: DateTime.now(), locale: LocaleType.jp);
                  },
                  child: Text(
                    '${startTime.year}/${startTime.month}/${startTime.day} ${startTime.hour}:${startTime.minute}',
                    style: const TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'End Time :',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    DatePicker.showDateTimePicker(context, showTitleActions: true, minTime: startTime, maxTime: DateTime(2023, 12, 31, 11, 22), onChanged: (date) {
                      ref.read(appointmentProvider.notifier).editEndTime(time: date);
                    }, onConfirm: (date) {
                      ref.read(appointmentProvider.notifier).editEndTime(time: date);
                    }, currentTime: startTime, locale: LocaleType.jp);
                  },
                  child: Text(
                    '${endTime.year}/${endTime.month}/${endTime.day} ${endTime.hour}:${endTime.minute}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('カラーを選択'),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: ColoredBox(color: appointColor),
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Pick a color!'),
                            content: SingleChildScrollView(
                              child: BlockPicker(
                                pickerColor: appointColor,
                                onColorChanged: (Color color) {
                                  ref.read(appointmentProvider.notifier).changeColor(color: color);
                                },
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton(
                                child: const Text('DONE'),
                                onPressed: () {
                                  Navigator.of(context).pop(); //dismiss the color picker
                                },
                              ),
                            ],
                          );
                        });
                  },
                  child: Text('選択'),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () async {
                ref.read(appointmentProvider.notifier).addAppointment(
                      uid: widget.uid,
                      companyId: widget.companyId,
                      startTime: startTime,
                      endTime: endTime,
                      subject: _subjectController.text,
                      color: appointColor,
                      notes: _memoController.text,
                    );

                Navigator.of(context).pop();

                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) {
                    return NavScreen();
                  }),
                );

              },
              child: Container(
                width: 200,
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
                  'Enter',
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

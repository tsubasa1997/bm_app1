import 'package:flutter/material.dart';


class IsSelectedJobButton extends StatefulWidget {
  const IsSelectedJobButton({super.key});



  @override
  State<IsSelectedJobButton> createState() => _IsSelectedJobButtonState();
}

class _IsSelectedJobButtonState extends State<IsSelectedJobButton> {
  String? isSelectedJob = '職種';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text('職種を選択してください'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isSelectedJob!),
            DropdownButton(items: const [
              DropdownMenuItem(
                value: '技術者',
                child: Text('技術者'),
              ),
              DropdownMenuItem(
                value: '事務職',
                child: Text('事務職'),
              ),
              DropdownMenuItem(
                value: '営業',
                child: Text('営業'),
              ),
              DropdownMenuItem(
                value: '管理者',
                child: Text('管理者'),
              ),
            ], onChanged: (String? value){
              setState(() {
                isSelectedJob = value;
              });
            }),
          ],
        ),
      ],
    );
  }
}

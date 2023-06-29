import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectionButton extends ConsumerStatefulWidget {
  const SelectionButton({
    super.key,
    required this.request,
    required this.state,
    required this.onPressed,
  });

  final String request;
  final String state;
  final VoidCallback onPressed;

  @override
  ConsumerState<SelectionButton> createState() => _SelectionButtonState();
}

class _SelectionButtonState extends ConsumerState<SelectionButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(5.0),
          width: 400,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Text(
                widget.request,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    widget.state,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        widget.onPressed();
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

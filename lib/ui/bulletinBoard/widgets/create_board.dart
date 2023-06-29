import 'package:bm_app/controllers/board_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateBoard extends ConsumerStatefulWidget {
  const CreateBoard({
    super.key,
    required this.uid,
    required this.companyId,
  });

  final String uid;
  final String companyId;

  @override
  ConsumerState<CreateBoard> createState() => _CreateBoardState();
}

class _CreateBoardState extends ConsumerState<CreateBoard> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('投稿'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            const Text(
              'Title',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(
                    hintText: 'タイトルを入力',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              '内容',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: TextField(
                controller: _contentController,
                style: const TextStyle(
                  fontSize: 25,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              width: 120,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(40),
              ),
              child: TextButton(
                child: const Text(
                  '投稿する',
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  ref.read(boardProvider).createBoard(
                        companyId: widget.companyId,
                        title: _titleController.text,
                        content: _contentController.text,
                        creatorId: widget.uid,
                        createTime: DateTime.now(),
                      );
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

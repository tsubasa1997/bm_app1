import 'package:bm_app/Navigater_screen.dart';
import 'package:bm_app/controllers/auth_controller.dart';
import 'package:bm_app/ui/sign/widget/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/company/company.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key, required this.companyId});

  final String companyId;

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _nameController = TextEditingController();
  String? authority = '権限レベルを選択';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFieldInput(
                    textEditingController: _nameController,
                    hintText: 'お名前を入力',
                    textInputType: TextInputType.text,
                    request: 'お名前を入力してください',
                  ),
                  TextFieldInput(
                    textEditingController: _emailController,
                    hintText: 'xxxxx@e-mail.com',
                    textInputType: TextInputType.text,
                    request: 'e-mailを記入してください',
                  ),
                  TextFieldInput(
                    textEditingController: _passwordController,
                    hintText: 'パスワードを登録',
                    textInputType: TextInputType.visiblePassword,
                    request: '登録するパスワードを入力してください',
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      const Text('このアプリを使用する上での権限を選択'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            authority!,
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                          DropdownButton(
                              items: const [
                                DropdownMenuItem(
                                  value: 'Lv.1',
                                  child: Text('Lv.1(非正規社員等)'),
                                ),
                                DropdownMenuItem(
                                  value: 'Lv.2',
                                  child: Text('Lv.2（正社員等）'),
                                ),
                                DropdownMenuItem(
                                  value: '管理者',
                                  child: Text('管理者（全ての権限を所有）'),
                                ),
                              ],
                              onChanged: (String? value) {
                                setState(() {
                                  authority = value;
                                });
                              }),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      ref.read(authProvider).createUser(
                            email: _emailController.text,
                            password: _passwordController.text,
                            name: _nameController.text,
                            authority: authority!,
                            companyId: widget.companyId,
                          );
                      // print(_nameController.text);
                      // print(_passwordController.text);
                      // print(_emailController.text);
                      // print(authority);
                      // print(widget.companyId);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return NavScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 250,
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
          ),
        ),
      ),
    );
  }
}

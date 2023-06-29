import 'package:bm_app/Navigater_screen.dart';
import 'package:bm_app/controllers/auth_controller.dart';
import 'package:bm_app/ui/sign/widget/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFieldInput(
                  textEditingController: _emailController,
                  hintText: 'Enter your e-mail',
                  textInputType: TextInputType.text,
                  request: '登録したe-mailを入力してください',
                ),
                TextFieldInput(
                  textEditingController: _passwordController,
                  hintText: 'Enter your password',
                  textInputType: TextInputType.text,
                  request: 'パスワードを入力してください',
                ),
                SizedBox(
                  height: 80,
                ),
                InkWell(
                  onTap: () async {
                    await ref.read(authProvider).signIn(email: _emailController.text, password: _passwordController.text);
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
    );
  }
}

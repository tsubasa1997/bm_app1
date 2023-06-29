import 'package:bm_app/controllers/company_controller.dart';
import 'package:bm_app/ui/sign/sign_up_screen.dart';
import 'package:bm_app/ui/sign/widget/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BuildCompany extends ConsumerStatefulWidget {
  const BuildCompany({super.key});

  @override
  ConsumerState<BuildCompany> createState() => _BuildCompanyState();
}

class _BuildCompanyState extends ConsumerState<BuildCompany> {
  final TextEditingController _companyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('会社名を入力'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              children: [
                Center(
                  child: TextFieldInput(
                    textEditingController: _companyNameController,
                    hintText: '',
                    textInputType: TextInputType.text,
                    request: '会社名を入力してください',
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () async{
                    final id = await ref.read(companyProvider).createCompany(name: _companyNameController.text,);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen(companyId: id,);
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

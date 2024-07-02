import 'package:flutter/material.dart';
import 'package:v_care/constants.dart';
import 'package:v_care/core/widgets/custom_button.dart';
import 'package:v_care/features/authentication/presentation/views/widgets/custom_text_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.padding),
      child: Form(
        child: Column(
          children: [
            CustomTextField(
              hintText: 'ادخل بريدك الالكتروني',
              labelText: 'البريد الالكتروني',
              prefix: const Icon(Icons.email),
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'كلمة السر',
              labelText: 'كلمة السر',
              prefix: const Icon(Icons.lock),
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: isVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility)),
              obsecureText: isVisible,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'كلمة السر',
              labelText: 'كلمة السر',
              prefix: const Icon(Icons.lock),
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: isVisible
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility)),
              obsecureText: isVisible,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(text: 'تسجيل الدخول', onPressed: () {}),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 2.5,
                    color: Colors.black,
                  ),
                  const Text(
                    'او',
                    style: TextStyle(fontSize: 18),
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width / 2.5,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            CustomButton(
                text: 'المتابعه عن طريق جوجل',
                onPressed: () {},
                backGroundColor: Colors.grey.withOpacity(.5)),

          ],
        ),
      ),
    );
  }
}

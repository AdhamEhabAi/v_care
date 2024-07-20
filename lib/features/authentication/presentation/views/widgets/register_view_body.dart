import 'package:flutter/material.dart';
import 'package:v_care/features/authentication/presentation/views/widgets/register_form.dart';
import 'package:v_care/features/authentication/presentation/views/widgets/upper_container_widget.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const UpperContainerWidget(
            headerText: 'اشتراك',
            text: Text(
              'اشترك في التطبيق للاستمتاع\n بجميع المزايا',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 20),
            ),
          ),
          const RegisterForm(),
          TextButton(
              onPressed: () {},
              child: Text(
                'لديك ايميل',
                style: TextStyle(
                  fontSize: 22,
                  decoration: TextDecoration.underline,
                  color: Colors.black.withOpacity(.4),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'بالنقر فوق "تسجيل" فأنك توافق على شروطنا \nوأنك قد قرأت سياسة الخصوصية الخاصة بنا ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(.5),
              ),
            ),
          ),
        ],
      
      ),
    );
  }
}
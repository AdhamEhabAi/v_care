import 'package:flutter/material.dart';
import 'package:v_care/features/authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:v_care/features/authentication/presentation/views/widgets/drop_down_textfield.dart';

class CompleteRegisterForm extends StatefulWidget {
  const CompleteRegisterForm({super.key});

  @override
  _CompleteRegisterFormState createState() => _CompleteRegisterFormState();
}

class _CompleteRegisterFormState extends State<CompleteRegisterForm> {
  String? _selectedGender;
  String? _selectedCountry;
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextField(
            hintText: 'ادخل اسمك بالكامل هنا',
            labelText: 'الاسم ثلاثي',
            textInputType: TextInputType.name,
          ),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () => _selectDate(context),
            child: AbsorbPointer(
              child: CustomTextField(
                hintText: 'اختار تاريخ ميلادك',
                labelText: 'تاريخ الميلاد',
                suffix: const Icon(Icons.calendar_month),
                textInputType: TextInputType.datetime,
                controller: TextEditingController(
                  text: _selectedDate == null
                      ? ''
                      : "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          CustomDropdownField(
            hintText: 'اختار النوع',
            labelText: 'النوع',
            items: const ['ذكر', 'أنثى'],
            onChanged: (String? newValue) {
              setState(() {
                _selectedGender = newValue;
              });
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CustomDropdownField(
            hintText: 'اختار البلد',
            labelText: 'البلد',
            items: const ['مصر', 'السعودية', 'الإمارات', 'الكويت', 'قطر'],
            onChanged: (String? newValue) {
              setState(() {
                _selectedCountry = newValue;
              });
            },
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomTextField(
            hintText: 'رقم الهاتف الخاص بك',
            labelText: 'رقم الهاتف',
            textInputType: TextInputType.number,
            suffix: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('966+'),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ImageIcon(AssetImage('assets/images/saudi-arabia.png')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

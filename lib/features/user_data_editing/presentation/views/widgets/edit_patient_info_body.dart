import 'package:flutter/material.dart';
import 'package:v_care/features/authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:v_care/features/user_data_editing/presentation/views/widgets/edit_patient_info_container.dart';

class EditPatientInfoBody extends StatefulWidget {
  const EditPatientInfoBody({
    super.key,
  });

  @override
  State<EditPatientInfoBody> createState() => _EditPatientInfoBodyState();
}

class _EditPatientInfoBodyState extends State<EditPatientInfoBody> {
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

  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _massController = TextEditingController();
  final TextEditingController _bloodController = TextEditingController();
  final TextEditingController _alcoholController = TextEditingController();
  final TextEditingController _drugsController = TextEditingController();
  final TextEditingController _sigarController = TextEditingController();

  final TextEditingController _allergiesController = TextEditingController();
  final TextEditingController _timeDiseaseController = TextEditingController();
  final TextEditingController _sharpDiseaseController = TextEditingController();
  final TextEditingController _currentDrugsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40.39)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 80),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const CustomTextField(
                      labelText: 'أدهم احمد بلال',
                      textInputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () => _selectDate(context),
                      child: AbsorbPointer(
                        child: CustomTextField(
                          labelText: '25/4/2000',
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
                    const CustomTextField(
                      labelText: '586 2563 23204',
                      textInputType: TextInputType.number,
                      suffix: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('966+'),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: ImageIcon(
                                AssetImage('assets/images/saudi-arabia.png')),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    EditPatientInfoContainer(
                        allergiesController: _allergiesController,
                        timeDiseaseController: _timeDiseaseController,
                        sharpDiseaseController: _sharpDiseaseController,
                        currentDrugsController: _currentDrugsController,
                        alcoholController: _alcoholController,
                        drugsController: _drugsController,
                        sigarController: _sigarController,
                        heightController: _heightController,
                        bloodController: _bloodController,
                        massController: _massController),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: -40,
            right: 0,
            left: 0,
            child: CircleAvatar(
              backgroundColor: Colors.white.withOpacity(.7),
              radius: 40,
              child: Image(
                image: const AssetImage('assets/images/image.png'),
                width: 40,
                color: Colors.black.withOpacity(.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

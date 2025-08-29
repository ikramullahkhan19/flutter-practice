import 'package:flutter/material.dart';
import 'package:flutterpractice/Form_validation_App/utils/validators.dart';
class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Enter Phone No',
          prefixIcon: Icon(Icons.phone),
          filled: true,
          fillColor: Colors.white
      ),
      validator:Validators.phoneValidator,
    );
  }
}

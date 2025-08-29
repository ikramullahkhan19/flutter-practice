import 'package:flutter/material.dart';
import 'package:flutterpractice/Form_validation_App/utils/validators.dart';
class EmailField extends StatelessWidget {
  const EmailField({super.key});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Enter Email',
          prefixIcon: Icon(Icons.email),
          fillColor: Colors.white,
          filled: true,
      ),
      validator: Validators.emailValidator,

    );


  }
}

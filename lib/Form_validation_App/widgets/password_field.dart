import 'package:flutter/material.dart';
import 'package:flutterpractice/Form_validation_App/utils/validators.dart';
class PasswordField extends StatelessWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Enter Password',
          prefixIcon: Icon(Icons.lock),
          filled: true,
          fillColor: Colors.white
      ),
      obscureText: true,
      validator: Validators.passwordValidator,

    );


  }
}

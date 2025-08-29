import 'package:flutter/material.dart';
import 'package:flutterpractice/Form_validation_App/widgets/email_field.dart';
import 'package:flutterpractice/Form_validation_App/widgets/password_field.dart';
import 'package:flutterpractice/Form_validation_App/widgets/phone_field.dart';
class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('Form Screen'),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xFF82B1FF),
                borderRadius: BorderRadius.circular(10)

              ),
              child: Column(
                children: [
                  EmailField(),
                  SizedBox(height: 10,),
                  PasswordField(),
                  SizedBox(height: 10,),
                  PhoneField(),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Form Submitted")));

                    }
                  }, child: Text('Submit',style: TextStyle(
                    fontWeight: FontWeight.bold,color: Colors.red
                  ),))
                ],
              ),
            ),
          ))
      )
    );
  }
}

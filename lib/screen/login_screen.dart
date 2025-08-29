import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey=GlobalKey<FormState>();

  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Center(
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'email',
                      prefixIcon: Icon(Icons.email),
                      fillColor: Colors.lightBlueAccent,
                      filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'Email is required';
                      }
                      else if(!value.contains('@')){
                        return "enter a valid email";

                      }else {
                        return null;
                      }

                    },


                  ),

              ),
              SizedBox(height: 10,),

               Center(
                  child: TextFormField(
                    controller: passwordController,

                    decoration: InputDecoration(
                      hintText: 'password',
                      prefixIcon: Icon(Icons.lock),
                        fillColor: Colors.lightBlueAccent,
                        filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )

                    ),


                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (value){
                      if(value==null || value.isEmpty){
                        print(' password is required');
                      }else if(value.length<6){
                        return 'must be at least 6 characters';
                      }else{
                        return null;
                      }
                    },
                  ),



              ),
              SizedBox(height: 20,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),

                ),


                onPressed: (){
                 if(_formKey.currentState!.validate()){
                   print('login successfull');
                   print("email :${emailController.text}");
                   print("password${passwordController.text}");
                 }


                }, child: Text('Login'),


              )

            ],
          ),
        ),
      ),
    );
  }
}

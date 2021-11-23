import 'package:flutter_unitest/Constants.dart';

import 'FieldValidator.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 50,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: FieldValidator.validateEmail,
                    decoration: InputDecoration(
                        hintText: hint_email
                    ),
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: FieldValidator.validatePassword,
                    decoration: InputDecoration(
                        hintText: hint_password
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    var state =_formKey.currentState;
                    if(state!=null && state.validate()){
                      state.save();
                    }
                  }, child: Text("Submit"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


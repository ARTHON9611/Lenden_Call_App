import 'package:flutter/material.dart';
import 'package:lenden_call/resources/auth_methods.dart';
import 'package:lenden_call/widgets/custom_Button.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  final authMethods enter = authMethods();
  void signin()async{
    enter.googleSignIn();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        Align(alignment: Alignment.center,child: Container(margin: const EdgeInsets.all(2),child: const Text("Start or join a meeting",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),))),
        Image.asset("assets/images/onboarding.jpg"),
        custom_Button(text: "Google Sign In",onPressed: (){signin();},)
        
      ]),
    );
  }
}
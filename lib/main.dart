import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lenden_call/screens/login_screen.dart';
import 'package:lenden_call/utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lenden',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login':(context)=>const loginScreen()
      },
      theme: ThemeData.dark(
        useMaterial3: true,
      // ignore: deprecated_member_use
      ).copyWith(scaffoldBackgroundColor: backgroundColor,),
      home:const loginScreen(),
       
    );
  }
}


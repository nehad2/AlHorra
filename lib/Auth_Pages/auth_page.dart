// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:alhora_project/Auth_Pages/login_page.dart';
import 'package:alhora_project/Auth_Pages/register_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
   AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {//const


  bool showLoginPage = true; 

  void toggleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });

  }



  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toggleScreens);
    }
    else{
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}
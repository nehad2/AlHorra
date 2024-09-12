import 'package:alhora_project/Auth_Pages/auth_page.dart';
import 'package:alhora_project/nav_bar.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
            return NavBar();
          } else {
            return AuthPage();
            
            }
          }),
    );
  }
}

import 'package:alhora_project/Auth_Pages/login_page.dart';
import 'package:alhora_project/Auth_Pages/main_page.dart';
import 'package:alhora_project/Pages/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MaterialApp(
      title: 'Alhora', debugShowCheckedModeBanner: false, home: MainPage()));
}

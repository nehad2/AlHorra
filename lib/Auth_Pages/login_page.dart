// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member, use_build_context_synchronously

//import 'package:alhora_project/Pages/intro_page.dart';
import 'package:alhora_project/Auth_Pages/forgotPassword_page.dart';
import 'package:alhora_project/Pages/Search_page.dart';
import 'package:alhora_project/Pages/dashboard_page.dart';
import 'package:alhora_project/nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//import 'package:flutter/services.dart';
//import 'package:flutter/widgets.dart';
//import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget {
  final VoidCallback showRegisterPage;

  const LoginPage({super.key, required this.showRegisterPage});

  @override
  //_LoginPageState createState() => _LoginPageState();
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isPasswordVisible = false;


  Future<void> signIn() async {
    if (_emailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty) {
      // Show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please enter both email and password'),
        ),
      );
    } else {
      try {

        showDialog(
          context: context,
          builder: (context){
            return Center(child: CircularProgressIndicator(
              
            ));
          }
          );

        
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        Navigator.of( context).pop();

        
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.message!),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //const
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.car_rental_sharp,
              size: 100,
              color: Color.fromARGB(255, 0, 0, 0),
              applyTextScaling: true,
            ),
            SizedBox(height: 60),
            Text(
              'Hello Again!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),

              //style: GoogleFonts.(fontSize: 52),
            ),
            SizedBox(height: 0),
            Text(
              'Welcome  back to AlHorra!',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 70,
                padding: EdgeInsets.only(left: 20, top: 11),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 255, 254, 254),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'Email', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),

              //
              child: Container(
                height: 70,
                padding: EdgeInsets.only(left: 20, top: 11),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () async {
                  await signIn();
                },
                child: Container(
                    padding: EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a Member?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                  onTap: widget.showRegisterPage,
                  child: Text(
                    ' Register Now',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 43,
            )
          ],
        ),
      )),
    );
  }
}

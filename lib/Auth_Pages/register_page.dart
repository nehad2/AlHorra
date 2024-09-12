// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//age
class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({super.key, required this.showLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  Future<void> signUp() async {
    if (passwordConfirmed()) {
      if (_emailController.text.trim().isEmpty ||
          _passwordController.text.trim().isEmpty ||
          _confirmPasswordController.text.trim().isEmpty ||
          _firstNameController.text.trim().isEmpty ||
          _lastNameController.text.trim().isEmpty) {
        // Show an error message to the user
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please Fill the required Fields Correctly'),
          ),
        );
      }
      //  else if (int.parse(_ageController.text.trim()) > 99 ||
      //     int.parse(_ageController.text.trim()) < 13) {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(
      //       content: Text('Invalid Age'),
      //     ),
      //   );
      // }
      else {
        try {
          showDialog(
              context: context,
              builder: (context) {
                return Center(child: CircularProgressIndicator());
              });
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text.trim(),
            
          );
          Navigator.of(context).pop();
          await addUserDetails(_firstNameController.text.trim(),
              _lastNameController.text.trim(), _emailController.text.trim());

          
        } on FirebaseException catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.message!),
            ),
          );
        }
      }
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Passwords do not match'),
        ),
      );
      return false;
    }
  }

  Future addUserDetails(String firstName, String lastName, String email) async {
    await FirebaseFirestore.instance
        .collection('users')
        .add({'FirstName': firstName, 'LastName': lastName, 'Email': email});
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: SafeArea(
          child: Center(
        //const
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(
              'Hello There!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 0),
            Text(
              'Register with your details below!',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 11),
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                      hintText: 'First Name', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 11),
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                      hintText: 'Last Name', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 70,
                padding: EdgeInsets.only(left: 20, top: 11),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
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
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 11),
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 70,
                padding: EdgeInsets.only(left: 20, top: 11),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  signUp();
                },
                child: Container(
                    padding: EdgeInsets.all(22),
                    // height: 50,
                    // width: 300,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Sign up',
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
                  'Already a Member?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                  onTap: widget.showLoginPage,
                  child: Text(
                    ' login Now',
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

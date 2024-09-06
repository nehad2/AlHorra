// ignore_for_file: prefer_const_constructors

//import 'package:alhora_project/Pages/intro_page.dart';
import 'package:alhora_project/Pages/Search_page.dart';
import 'package:alhora_project/Pages/dashboard_page.dart';
import 'package:alhora_project/nav_bar.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:flutter/widgets.dart';
//import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Welcome  back to AlHorra',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Email', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 233, 233, 233)),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password', border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                    );
                    },
                    
                child: Container(
                    padding: EdgeInsets.all(11),
                    // height: 50,
                    // width: 300,
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
              children: const [
                Text(
                  'Not a Member?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  ' Register Now',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
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

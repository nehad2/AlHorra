// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_final_fields, prefer_const_constructors, library_private_types_in_public_api, unnecessary_string_escapes, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:ui';

import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  
   

  @override
  Widget build(BuildContext context) {
    var dashCard = Padding(
    padding: const EdgeInsets.only(bottom: 50.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 171, 84, 84),
          image: new DecorationImage(
            image: new ExactAssetImage(
              'Assets/Images/carpic.png',
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: new BorderRadius.all(new Radius.circular(30)),
          border: new Border.all(
            color: Colors.transparent,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Car Image

                Container(
                  width: 300,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 171, 84, 84),
                    image: new DecorationImage(
                      image: new ExactAssetImage('Assets/Images/carpic.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: new BorderRadius.all(new Radius.circular(30)),
                    border: new Border.all(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                //car band + Price

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage('Assets/Images/bmw_logo.png'),
                      width: 50, // Adjust the width as needed
                      height: 50, // Adjust the height as needed
                      //alignment: Alignment.topCenter,
                      //  fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      ' 23.900',
                      style: TextStyle(
                          backgroundColor: Color.fromARGB(112, 255, 255, 255),
                          fontSize: 15,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w900),
                    ),
                    Center(
                      child: Text(
                        'JOD',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Trending 🔥',
            style: TextStyle(fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
      ),
        body: SingleChildScrollView(
          
            child: Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        children: [
          dashCard,
          dashCard,
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              // height: 160,
              // width: 400,
            
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 171, 84, 84),
                image: new DecorationImage(
                  image: new ExactAssetImage(
                    'Assets/Images/carpic.png',
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: new BorderRadius.all(new Radius.circular(30)),
                border: new Border.all(
                  color: Colors.transparent,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
            
                      //Car Image
            
                      Container(
                        width: 300,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 171, 84, 84),
                          image: new DecorationImage(
                            image:
                                new ExactAssetImage('Assets/Images/carpic.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              new BorderRadius.all(new Radius.circular(30)),
                          border: new Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
            
                      //car band + Price
            
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage('Assets/Images/bmw_logo.png'),
                            width: 50, // Adjust the width as needed
                            height: 50, // Adjust the height as needed
                            //alignment: Alignment.topCenter,
                            //  fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            ' 23.900',
                            style: TextStyle(
                                backgroundColor:
                                    Color.fromARGB(112, 255, 255, 255),
                                fontSize: 15,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w900),
                          ),
                          Center(
                            child: Text(
                              'JOD',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    )));
  }
}

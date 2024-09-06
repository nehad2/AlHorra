// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var cardProfile = Padding(
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
      endDrawer: Drawer(
        
      
        child: ListView(
          children: [
            ListTile(
              title: Text('Account'),
              subtitle: Text('Home Page'),
              trailing: Icon(Icons.home),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 1,
                
              ),
            ),
            ListTile(
              title: Text('Setting'),
              subtitle: Text('About Page'),
              trailing: Icon(Icons.info),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Divider(
                thickness: 1,
                
              ),
            ),
            
           
            
            ListTile(
                title: Text('Contact'),
                subtitle: Text('Contact Page'),
                trailing: Icon(Icons.contact_phone),
            ),
            
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile Page'),
        centerTitle: true, // Add this to center the title
        actions: [
          IconButton(
            icon: const Icon(
              Icons.add_box,
              size: 30,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          Builder(builder: (context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://via.placeholder.com/150'), // Replace with your profile picture URL
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      'John Doe', // Replace with your name
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.check_circle,
                        color: Color.fromARGB(255, 100, 110, 180))
                  ],
                ),
                const Text(
                  'discreption about the user', // Replace with your email
                ),
                const SizedBox(height: 20),
                Column(children: [
                  cardProfile,
                  cardProfile,
                  cardProfile,
                  cardProfile,
                  cardProfile
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

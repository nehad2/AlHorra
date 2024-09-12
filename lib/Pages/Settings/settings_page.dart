// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 30),
              // Section 1: Account Settings
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'ACCOUNT SETTINGS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 149, 149, 149),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),

              ListTile(
                leading: Icon(
                  size: 36,
                  color: Colors.black, // Make icon black
                  Icons.person,
                ),
                title: Text(
                  'Account Information',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined), // Add trailing icon
                // onTap: () {
                // Navigate to account information page
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => const AccountInfoPage()),
                // );
                // },
              ),
              ListTile(
                leading: Icon(
                  size: 36,
                  color: Colors.black, // Make icon black
                  Icons.lock,
                ),
                title: Text(
                  'Change Password',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined), // Add trailing icon
                // onTap: () {
                // Navigate to change password page
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => const ChangePasswordPage()),
                // );
                // },
              ),
              Divider(
                thickness: 6,
                color: Color.fromARGB(151, 203, 203, 203),
              ),
              SizedBox(
                height: 15,
              ),
              // ...

              // Section 2: App Settings
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'APP SETTINGS',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 149, 149, 149),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  size: 36,
                  color: Colors.black, // Make icon black
                  Icons.palette,
                ),
                title: Text(
                  'Theme',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined), // Add trailing icon
                // onTap: () {
                // Show theme selection dialog
                // showDialog(
                // context: context,
                // builder: (context) => const ThemeSelectionDialog(),
                // );
                // },
              ),
              ListTile(
                leading: Icon(
                  size: 36,
                  color: Colors.black, // Make icon black
                  Icons.notifications,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined), // Add trailing icon
                // onTap: () {
                // Navigate to notification settings page
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => const NotificationSettingsPage()),
                // );
                // },
              ),
              Divider(
                thickness: 6,
                color: Color.fromARGB(151, 203, 203, 203),
              ),
              SizedBox(
                height: 15,
              ),
              // ...

              // Section 3: Help and Feedback
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'HELP AND FEEDBACK',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 149, 149, 149),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Icon(
                  size: 36,
                  color: Colors.black, // Make icon black
                  Icons.question_answer,
                ),
                title: Text(
                  'FAQs',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined), // Add trailing icon
                // onTap: () {
                // Navigate to FAQs page
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => const FAQsPage()),
                // );
                // },
              ),
              ListTile(
                leading: Icon(
                  size: 36,
                  color: Color.fromARGB(255, 5, 5, 5), // Make icon black
                  Icons.bug_report,
                ),
                title: Text(
                  'Report an Issue',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing:
                    Icon(Icons.arrow_forward_ios_outlined), // Add trailing icon
                // onTap: () {
                // Show report issue dialog
                // showDialog(
                // context: context,
                // builder: (context) => const ReportIssueDialog(),
                // );
                // },
              ),
            ],
          )),
    );
  }
}

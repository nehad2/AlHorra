// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color backgroundColor;
  const SearchPage(
      {required this.title,
      required this.imagePath,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
   
    return 
      
        
        Container(
          margin: EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(19.0),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 120),
                  child: CircleAvatar(
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        
      
    );
  }
}

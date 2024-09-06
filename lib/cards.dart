// ignore_for_file: prefer_const_constructors

import 'package:alhora_project/Pages/Search_page.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CategoryGrid();
  }
}

class CategoryGrid extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'title': 'Price',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.blue,
    },
    {
      'title': 'Brand',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.purple,
    },
    {
      'title': 'Year',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.red,
    },
    {
      'title': 'Vehicle Type',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.orange,
    },
    {
      'title': 'Country of Origin',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.brown,
    },
    {
      'title': 'Fuel Type',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.green,
    },
    {
      'title': 'Mileage',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.pink,
    },
    {
      'title': 'Condition',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.black,
    },
    {
      'title': 'Color',
      'imagePath': 'Assets/Images/carpic.png',
      'color': Colors.yellow,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();

    return Scaffold(

      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, 
        title: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(44),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: TextField(
             
              controller: _searchController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),

              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14.0,
          mainAxisSpacing: 10,
          // childAspectRatio: 1
          // Adjust to control card height
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return SearchPage(
            title: category['title'],
            imagePath: category['imagePath'],
            backgroundColor: category['color'],
          );
        },
        padding: EdgeInsets.all(16.0),
        
      ),
    );
  }
}
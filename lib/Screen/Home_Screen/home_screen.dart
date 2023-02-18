import 'dart:math';

import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Center(
          child: Text(
            "Age Calculater",
            style: TextStyle(
                letterSpacing: 1,
                fontSize: 20
            ),
          ),
        ),
        leading: Center(
          child: Icon(Icons.menu_open),
        ),
        actions: [
          Icon(Icons.account_circle)
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 400,width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sse3401_lab3/base/bottom_nav_bar.dart';
import 'package:sse3401_lab3/screens/home_screen.dart';

void main() {

   runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {

     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: BottomNavBar(),
     );
   }
 }


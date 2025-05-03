import 'package:flutter/material.dart';
import 'package:sse3401_lab3/base/bottom_nav_bar.dart';
import 'package:sse3401_lab3/screens/home/all_hotels.dart';
import 'package:sse3401_lab3/screens/home/home_screen.dart';
import 'package:sse3401_lab3/screens/hotel_detail.dart';
import 'package:sse3401_lab3/screens/ticket/ticket_screen.dart';

import 'base/utils/app_routes.dart';
import 'screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}


 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {

     return MaterialApp(
       debugShowCheckedModeBanner: false,
       routes: {
         AppRoutes.homePage:(context)=> const BottomNavBar(),
         AppRoutes.allTicket:(context)=>const AllTickets(),
         AppRoutes.ticketScreen:(context)=> const TicketScreen(),
         AppRoutes.allHotels:(context)=> const AllHotels(),
         AppRoutes.hotelDetail:(context)=> const HotelDetail(),

       },
     );
   }
 }


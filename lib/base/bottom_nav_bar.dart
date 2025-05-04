import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sse3401_lab4/controller/bottom_nav_controller.dart';
import 'package:sse3401_lab4/provider/bottom_nav_provider.dart';
import 'package:sse3401_lab4/screens/home/home_screen.dart';
import '../screens/profile/profile.dart';
import '../screens/search/search_screen.dart';
import '../screens/ticket/ticket_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavBar extends ConsumerWidget {
   BottomNavBar({Key? key}) : super(key: key);



  //list is iterated using index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  //change our index for bottomNavBar
  //int _selectedIndex = 0;
  // void _onItemTapped(int index){
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  //   print("Tapped index is $_selectedIndex");
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedIndex = ref.watch(bottomNavBarNotifierProvider);

    return Scaffold(
      body: appScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: ref.watch(bottomNavBarNotifierProvider.notifier).onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),

            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),

            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "Search",
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),

            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets",
          ),

          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),

            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

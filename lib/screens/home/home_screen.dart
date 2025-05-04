import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sse3401_lab4/base/utils/all_json.dart';
import 'package:sse3401_lab4/base/utils/app_routes.dart';
import 'package:sse3401_lab4/base/widgets/app_double_text.dart';
import 'package:sse3401_lab4/base/widgets/ticket_view.dart';
import 'package:sse3401_lab4/res/media.dart';
import 'package:sse3401_lab4/screens/home/widgets/hotel.dart';
import '../../base/widgets/heading_text.dart';
import '../../styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Column
    //ListView
    //ListView.builder
    //Expand
    return Scaffold(
      // ListView enable scrollable effect
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headLineStyle3),
                        const SizedBox(height: 5),
                        const HeadingText(text: "Book Tickets", isColor: false,),
                      ],
                    ),
                    Container(
                        width: 50,
                        height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage(AppMedia.logo)
                        )
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205) ,),
                      Text("Search")
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(bigText: 'Upcoming Flight', smallText: 'View all',
                      func: ()=>Navigator.pushNamed(context,AppRoutes.allTicket),),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList.take(2).map((singleTicket) => GestureDetector(
                          onTap: (){
                            var index = ticketList.indexOf(singleTicket);

                            print("I am tapped on the ticket $index");

                            Navigator.pushNamed(context, AppRoutes.ticketScreen,
                                arguments: {"index": index});
                          },
                          child: TicketView(ticket:singleTicket))
                      ).toList(),
                    ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(bigText: 'Hotels', smallText: 'View all',
                      func: (){
                        Navigator.pushNamed(context,AppRoutes.allHotels);
                      }
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList.take(2).map((singleHotel) => GestureDetector(
                          onTap: (){
                            var index = hotelList.indexOf(singleHotel);

                            Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
                              "index":index
                            });
                          },
                          child: Hotel(hotel:singleHotel)))
                          .toList(),
                    ),
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}

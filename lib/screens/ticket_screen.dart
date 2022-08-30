import 'package:book_flights/screens/ticket_view.dart';
import 'package:book_flights/utils/app_info_list.dart';
import 'package:book_flights/utils/app_layout.dart';
import 'package:book_flights/utils/app_styles.dart';
import 'package:book_flights/widgets/column_layout.dart';
import 'package:book_flights/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  //const TicketScreen({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
            backgroundColor: Styles.bgColor,
            body: Stack(
              children: [ ListView(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20),),
                children: [
                  Gap(AppLayout.getHeight(40)),
                  Text("Tickets", style: Styles.headlineStyle1,),
                  Gap(AppLayout.getHeight(20)),
                  const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                    child: TicketView(ticket: ticketList[0], isColor: true,),
                  ),
                  const SizedBox(height: 1,),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                           
                            AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start, isColor: false,),
                            AppColumnLayout(firstText: "5221 364869", secondText: "passport", alignment: CrossAxisAlignment.end, isColor: false,)

                        ],),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                           
                            AppColumnLayout(firstText: "34242 555 345334", secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start, isColor: false,),
                            AppColumnLayout(firstText: "B2SG28", secondText: "Bookind", alignment: CrossAxisAlignment.end, isColor: false,)

                          ],
                        ),

                      ],
                    ),
                  )
                ]
     
              )
          ],
        ),
      );
  }
}

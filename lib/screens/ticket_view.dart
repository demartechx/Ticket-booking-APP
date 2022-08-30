import 'package:book_flights/utils/app_layout.dart';
import 'package:book_flights/utils/app_styles.dart';
import 'package:book_flights/widgets/column_layout.dart';
import 'package:book_flights/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import '../widgets/layout_builder_widget.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?167:169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            /*
                showing the blue part of the card
              */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))
                  ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(children: [
                Row(
                  children: [
                    Text(ticket['from']['code'],
                        style: isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white): Styles.headlineStyle3),
                    const Spacer(),
                    const ThickContainer(isColor: true),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: AppLayout.getHeight(24),
                          child: const AppLayoutBuilderWidget(sections: 6)
                        ),
                        Center(
                            child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded,
                                    color: isColor == null ? Colors.white : const Color(0xFF8ACCF7)))),
                      ],
                    )),

                    const ThickContainer(isColor: true),
                    const Spacer(),
                    Text(ticket['to']['code'],
                        style: isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3),
                    // Text("NYC", style: Styles.headlineStyle3)
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['from']['name'],
                          style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4),
                    ),
                    Text(
                      ticket['flying_time'],
                      style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4,
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4),
                    ),
                  ],
                )
              ]),
            ),
            /*
              showing the orange part of the card
            */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                              bottomRight:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ))),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: AppLayout.getWidth(5),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: isColor == null ? Colors.white : Colors.grey.shade300)),
                                  )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getHeight(10)),
                              bottomLeft:
                                  Radius.circular(AppLayout.getHeight(10)),
                            ))),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,

                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor==null?AppLayout.getHeight(21):0),
                      bottomRight: Radius.circular(isColor==null?AppLayout.getHeight(21):0))
                  ),
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(16),
                  top: AppLayout.getHeight(10),
                  right: AppLayout.getWidth(16),
                  bottom: AppLayout.getHeight(16)),
              child: Column(
                
                children: [
                  Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      
                      AppColumnLayout(firstText: ticket['date'], secondText: "Date", alignment: CrossAxisAlignment.start, isColor:false),
                      AppColumnLayout(firstText: ticket['departure_time'], secondText: "Departure time", alignment: CrossAxisAlignment.center, isColor:false),
                      AppColumnLayout(firstText: ticket['number'].toString(), secondText: "Number", alignment: CrossAxisAlignment.end, isColor:false),

                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       ticket['date'],
                      //       style: isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3,
                      //     ),
                      //     Gap(AppLayout.getHeight(5)),
                      //     Text(
                      //       "Date",
                      //       style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4,
                      //     )
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       ticket['departure_time'],
                      //       style: isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3,
                      //     ),
                      //     Gap(AppLayout.getHeight(5)),
                      //     Text(
                      //       "Departure time",
                      //       style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4,
                      //     )
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       ticket['number'].toString(),
                      //       style: isColor == null ? Styles.headlineStyle3.copyWith(color: Colors.white) : Styles.headlineStyle3,
                      //     ),
                      //     Gap(AppLayout.getHeight(5)),
                      //     Text(
                      //       "Number",
                      //       style: isColor == null ? Styles.headlineStyle4.copyWith(color: Colors.white) : Styles.headlineStyle4,
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

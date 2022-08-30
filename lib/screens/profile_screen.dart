 import 'package:book_flights/utils/app_layout.dart';
import 'package:book_flights/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Styles.bgColor,
       body: ListView(
         padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getHeight(20)),
         children: [
           Gap(AppLayout.getHeight(40)),
           Row(
             children: [
               Container(
                 height: AppLayout.getHeight(86),
                 width: AppLayout.getHeight(86),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                   image: const DecorationImage(
                     image: AssetImage(
                       "assets/images/logo.jpg"
                     )
                     
                   )
                 ),
               ),
               Column(children: [],)
             ],
              
           )

         ],
        ),
     );
   }
 }
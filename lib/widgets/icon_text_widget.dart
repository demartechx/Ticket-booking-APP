import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12), horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Color(0xFFBFC20F)),
          Gap(AppLayout.getWidth(10)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  final String text;
  final Color btnColor;
  const AppIconButton({Key? key, required this.text, required this.btnColor}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(18), horizontal: AppLayout.getWidth(15)),
      decoration: BoxDecoration(
        color: btnColor,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Center(
              child: Text(
              text,
              style: Styles.textStyle.copyWith(color: Colors.white ),
            ),
          )
        
      
    );
  }
}

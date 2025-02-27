import 'package:flutter/material.dart';

import '../Constant/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),

      width: double.maxFinite,
      child: Text(
        "Made by Satyam with Flutter 3.10"
        ,style: TextStyle(fontWeight: FontWeight.w400,color: CustomColor.whiteSecondary),),
    );
  }
}

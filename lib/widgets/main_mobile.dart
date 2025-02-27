import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../styles/main_avatar.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    //ScreenSize
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 700.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Avatar
          SizedBox(height: 70,),
          SizedBox(width:screenWidth,child: MainAvatar(width:screenWidth/1.9)),
          SizedBox(height: 70,),
          //button
          const Text(
            "Hello, \n I am Satyam sahu \nA Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: CustomColor.whitePrimary,
              height: 1.5,
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CustomColor.yellowPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Get in touch",
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

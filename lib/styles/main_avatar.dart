import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainAvatar extends StatelessWidget {
  const MainAvatar({super.key,required this.width});

  final double width;


  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/coder.svg',
      colorFilter: ColorFilter.mode(
        Colors.transparent,
        BlendMode.darken,
      ),

      width:width,
    );
  }
}

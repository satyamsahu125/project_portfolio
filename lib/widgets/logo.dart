
import 'package:flutter/material.dart';

import '../Constant/colors.dart';

class Logo extends StatelessWidget{
  const Logo({super.key, this.OnTap});
    final VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnTap,
      child: const Text(
        "SP",
        style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: CustomColor.yellowSecondary
        ),
      ),
    );
  }
  
}

import 'package:flutter/material.dart';

import '../Constant/colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key,required this.hintText,required this.maxLines});




  final String? hintText;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      style: TextStyle(color:CustomColor.scaffoldBg,),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16),
          filled: true,
          fillColor: CustomColor.whiteSecondary,
          focusedBorder: getInputBorder,
          enabledBorder:getInputBorder,
          border:  getInputBorder,

          hintText: hintText,
          hintStyle: TextStyle(
              color: CustomColor.hintDark
          )
      ),
    );
  }
  OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none
    );
  }
}

import 'package:flutter/material.dart';

import '../styles/header_Decoration.dart';
import 'logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onMenuTap,this.onLogoTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: sHeaderDecoration,
      height:50.0 ,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          Logo(OnTap: onLogoTap,),
          const Spacer(),
          IconButton(onPressed: onMenuTap, icon: const  Icon(Icons.menu)),
          SizedBox(width: 15,)
        ],
      ),
    );
  }
}

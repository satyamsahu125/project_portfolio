import 'package:flutter/material.dart';
import 'package:project_portfolio/widgets/logo.dart';

import '../Constant/colors.dart';
import '../Constant/nav_items.dart';
import '../styles/header_Decoration.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key,required this.onNavMenuTap});
  final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      height: 60,
      width: double.maxFinite,
      decoration: sHeaderDecoration,

      child: Row(
        children: [
          Logo(OnTap: (){},),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  onNavMenuTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

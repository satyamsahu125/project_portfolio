import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Constant/skills_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints : const BoxConstraints(
              maxWidth: 450
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [

              for(int i = 0 ; i < platformItem.length;i++ )
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: CustomColor.bgLight2,
                      borderRadius: BorderRadius.circular(5)

                  ),
                  child:
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    leading: Image.asset(platformItem[i]["img"],width: 26,color: CustomColor.whitePrimary,),
                    title: Text(platformItem[i]["title"]),

                  ),
                )
            ],
          ),
        ),
        SizedBox(height: 40,),

        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500),
          child: Wrap(

            runSpacing: 10.0,
            spacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for(int i = 0; i < skillItems.length ;i++)
                Chip(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  label: Text(skillItems[i]["title"]),
                  avatar: Image.asset(skillItems[i]["img"],),
                  padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16
                  ),
                  backgroundColor: CustomColor.bgLight2,
                )
            ],
          ),
        )
      ],
    );
  }
}

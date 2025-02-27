import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constant/colors.dart';
import '../Constant/skills_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints : const BoxConstraints(
              maxWidth: 500
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [

              for(int i = 0 ; i < platformItem.length;i++ )
                Container(
                  width: 220,
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
        SizedBox(width: 50,),
        Flexible(

          child: ConstrainedBox(constraints:const BoxConstraints(maxWidth: 500),
            child: Wrap(
              runSpacing: 10.0,
              spacing: 10.0,
              children: [
                for(int i = 0; i < skillItems.length ;i++)
                  Chip(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    label: Text(skillItems[i]["title"]),
                    avatar: Image.asset(skillItems[i]["img"]),
                    padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16
                    ),
                    backgroundColor: CustomColor.bgLight2,
                  )
              ],
            ),),
        )
      ],
    );
  }
}

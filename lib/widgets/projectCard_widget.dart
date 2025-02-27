import 'package:flutter/material.dart';
import 'package:project_portfolio/utils/project_utils.dart';

import '../Constant/colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project
  });
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,

      height: 290,
      width: 260,
      decoration: BoxDecoration(
        color: CustomColor.bgLight2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            project.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 10),
            child: Text(
              project.title,
              style: const TextStyle(
                fontSize: 14,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          Spacer(),

          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            color: CustomColor.bgLight1,
            child: Row(
              children: [
                Text(
                  "Available on",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                Spacer(),
                if(project.iosLink!=null)
                InkWell(
                  onTap: (){},
                  child: Icon(Icons.apple, size: 17),
                ),
                SizedBox(width: 7),
                if(project.androidLink!=null)
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.android, size: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
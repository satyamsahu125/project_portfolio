import 'package:flutter/material.dart';
import 'package:project_portfolio/widgets/projectCard_widget.dart';

import '../Constant/colors.dart';
import '../utils/project_utils.dart';

class ProjectSection extends StatelessWidget{
  const ProjectSection({super.key});


  @override
  build(BuildContext context){
    return Container(
      width: double.maxFinite,
      color: CustomColor.scaffoldBg,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 26,
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
          Wrap(
            spacing: 25,
            runSpacing: 25,
            children: [
              for(int i = 0 ; i < hobbyProjectUtils.length;i++)
                ProjectCard(project: hobbyProjectUtils[i]),
            ],
          ),
        ],
      ),
    );
  }
}
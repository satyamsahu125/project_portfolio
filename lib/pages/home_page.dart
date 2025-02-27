
import 'package:flutter/material.dart';
import 'package:project_portfolio/Constant/colors.dart';
import 'package:project_portfolio/Constant/size.dart';
import 'package:project_portfolio/widgets/drawer_Moblie.dart';
import 'package:project_portfolio/widgets/footer.dart';
import 'package:project_portfolio/widgets/form_Section.dart';
import 'package:project_portfolio/widgets/header_desktop.dart';
import 'package:project_portfolio/widgets/header_mobile.dart';
import 'package:project_portfolio/widgets/main_desktop.dart';
import 'package:project_portfolio/widgets/main_mobile.dart';
import 'package:project_portfolio/widgets/project_section.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Constant/sns_links.dart';
import '../widgets/skill_desktop.dart';
import '../widgets/skill_mobile.dart';

Future<void> openWebsite(url) async {
  final Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    {
      throw 'Could not launch Url';
    }
  }
}



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraint) {
        //ScreenSize

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer:
              constraint.maxWidth >= sMinDestopSize
                  ? null
                  : DrawerMobile(
                    onNavItemTap: (int navIndex) {
                      scaffoldKey.currentState?.closeEndDrawer();
                      scrollToSection(navIndex);
                    },
                  ),
          ////////////////////////////////////////////////////////////////////
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                // Main
                if (constraint.maxWidth >= sMinDestopSize)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {
                      openWebsite(SnsLinks.github);
                    },
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                if (constraint.maxWidth >= sMinDestopSize)
                  MainDesktop()
                else
                  MainMobile(),

                Container(
                  key: navbarKeys[1],
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
                  color: CustomColor.bgLight1,
                  width: double.maxFinite,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "What I can do",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),
                      if (screenWidth >= sMedDesktopWidth)
                        const SkillsDesktop()
                      else
                        const SkillsMobile(),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                //
                //
                // //   Skills
                ProjectSection(key: navbarKeys[2]),

                //   Projects
                FormSection(key: navbarKeys[3]),
                // Contact
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      openWebSite(SnsLinks.github);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

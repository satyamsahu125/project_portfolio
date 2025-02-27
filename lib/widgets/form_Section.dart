
import 'package:flutter/material.dart';
import 'package:project_portfolio/Constant/size.dart';
import 'package:project_portfolio/Constant/sns_links.dart';
import '../Constant/colors.dart';
import 'custom_Textfield.dart';
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';



Future<void> openWebSite(url) async{
  final Uri uri = Uri.parse(url);

  if(await canLaunchUrl(uri)){
    await launchUrl(uri , mode: LaunchMode.externalApplication);
  }else{
    throw "error";
  }
}


class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: double.infinity,
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          Text(
            "Get in touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= sMinDestopSize) {

                  return buildTextFormDesktop();

                } else {

                  return buildTextFormMobile();

                }
              },
            ),
          ),
          SizedBox(height: 15),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextfield(hintText: "Your message", maxLines: 5),
          ),
          SizedBox(height: 20),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 500),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10),
                  backgroundColor: CustomColor.yellowPrimary,
                ),
                onPressed: () {},
                child: Text(
                  "Get in touch",
                  style: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Divider(color: Colors.black38),
          ),
          SizedBox(height: 10),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 15),
            child: Wrap(
              runSpacing: 10,
              spacing: 15,
              alignment: WrapAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    openWebSite(SnsLinks.github);
                  },
                  child: Image.asset(
                    "assets/images/github.png",
                    height: 20,
                    width: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    openWebSite(SnsLinks.instagram);
                  },
                  child: Image.asset(
                    "assets/images/instagram.png",
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    openWebSite(SnsLinks.twitter);
                  },
                  child: Image.asset(
                    "assets/images/twitter.png",
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    openWebSite(SnsLinks.whatsapp);
                  },
                  child: Image.asset(
                    "assets/images/whatsapp.png",
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () {
                    openWebSite(SnsLinks.facebook);
                  },
                  child: Image.asset(
                    "assets/images/fb.png",
                    height: 20,
                    width: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row buildTextFormDesktop() {
    return Row(
      children: [
        Flexible(child: CustomTextfield(hintText: "Your Name", maxLines: 1)),
        const SizedBox(width: 15),
        Flexible(child: CustomTextfield(hintText: "Your email", maxLines: 1)),
      ],
    );
  }

  Column buildTextFormMobile() {
    return Column(
      children: [
        Flexible(child: CustomTextfield(hintText: "Your Name", maxLines: 1)),
        SizedBox(height: 15),
        Flexible(child: CustomTextfield(hintText: "Your email", maxLines: 1)),
      ],
    );
  }
}

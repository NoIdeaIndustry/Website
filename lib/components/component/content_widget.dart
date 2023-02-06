import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:noideaindustry/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:velocity_x/velocity_x.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorUtils.accentColor,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          context.isMobile
              ? Row(
                  children: const [
                    Text(
                      "Projects",
                      textScaleFactor: 2,
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      " we worked on:",
                      textScaleFactor: 2,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Projects",
                        textScaleFactor: 2,
                        style: TextStyle(color: Colors.black)),
                    Text(
                      "we worked on:",
                      textScaleFactor: 2,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
          50.widthBox,
          Expanded(
            child: VxSwiper(
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              enableInfiniteScroll: true,
              items: const [
                CardWidget(
                    title: "CannonWarefare",
                    icon: FontAwesome5.gamepad,
                    url: "https://github.com/NoIdeaIndustry/CannonWarefare"),
                CardWidget(
                    title: "Talker",
                    icon: FontAwesome5.robot,
                    url: "https://github.com/NoIdeaIndustry/Talker"),
                CardWidget(
                    title: "LightThread",
                    icon: FontAwesome5.paper_plane,
                    url: "https://github.com/NoIdeaIndustry/LightThread"),
                CardWidget(
                    title: "CryptoTracker",
                    icon: FontAwesome5.chart_line,
                    url: "https://github.com/NoIdeaIndustry/CryptoTracker"),
                CardWidget(
                    title: "RubiksCube",
                    icon: FontAwesome5.gamepad,
                    url: "https://github.com/NoIdeaIndustry/RubiksCube"),
                CardWidget(
                    title: "WorkerAI", icon: FontAwesome5.laptop, url: null),
              ],
              height: context.isMobile
                  ? 80
                  : context.screenWidth > 800 && context.screenWidth < 1200
                      ? 95
                      : 125,
              viewportFraction: context.isMobile ? 0.7 : 0.80,
              autoPlay: true,
              autoPlayAnimationDuration: 1.seconds,
            ),
          )
        ],
      ).p64().h(context.isMobile ? 325 : 300),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final String? url;
  const CardWidget(
      {super.key, required this.title, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Vx.purple600,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            )),
        onPressed: () {
          launchUrl(Uri.parse(url!));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              textScaleFactor: Responsive.isMobile(context)
                  ? context.safePercentWidth * 0.25
                  : Responsive.isTablette(context)
                      ? context.safePercentWidth * 0.25
                      : 2.8,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: Responsive.isMobile(context) ? 5 : 10),
              child: Icon(
                icon,
                color: Colors.black,
                size: context.isMobile ? 20 : 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

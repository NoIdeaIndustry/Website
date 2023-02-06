import 'package:flutter/material.dart';

import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:noideaindustry/utils/util/color_utils.dart';

import 'package:velocity_x/velocity_x.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
        child: VStack([
          ZStack([
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  const AppBar().shimmer(primaryColor: ColorUtils.accentColor),
                  30.heightBox,
                  Text(
                    "Reliable.\nAffordable.\nRuputable.",
                    textScaleFactor: 4,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: context.isMobile ? 15 : 18,
                      height: 1.25,
                    ),
                  ).shimmer(primaryColor: ColorUtils.accentColor),
                  20.heightBox,
                  VxBox()
                      .color(ColorUtils.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: ColorUtils.accentColor),
                  30.heightBox,
                  const SocialAccountsWidget(),
                ]).pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32,
                ),
                Expanded(
                  child: VxResponsive(
                    fallback: const Offstage(),
                    medium: Center(
                      child: const IntroductionWidget()
                          .h(context.percentHeight * 60),
                    ),
                    large: Center(
                      child: const IntroductionWidget()
                          .h(context.percentHeight * 60),
                    ),
                  ),
                )
              ],
            ).w(context.screenWidth),
          ]),
        ]),
      )
          .size(context.screenWidth, context.percentHeight * 60)
          .color(ColorUtils.primaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VStack(
      [LogoWidget()],
      alignment: MainAxisAlignment.start,
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/logo.png",
      fit: BoxFit.cover,
      height: context.percentHeight * 60,
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 75,
      child: Icon(
        FontAwesome5.code,
        size: 50,
        color: ColorUtils.accentColor,
      ),
    );
  }
}

class SocialAccountsWidget extends StatelessWidget {
  const SocialAccountsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(FontAwesome5.discord, size: 50, color: ColorUtils.accentColor)
          .mdClick(() {
            launchUrl(Uri.parse("https://discord.gg/KkfqEFMKmK"));
          })
          .make()
          .shimmer(primaryColor: ColorUtils.accentColor),
      20.widthBox,
      const Icon(FontAwesome5.github, size: 50, color: ColorUtils.accentColor)
          .mdClick(() {
            launchUrl(Uri.parse("https://github.com/NoIdeaIndustry"));
          })
          .make()
          .shimmer(primaryColor: ColorUtils.accentColor),
      20.widthBox,
      const Icon(FontAwesome5.twitter, size: 50, color: ColorUtils.accentColor)
          .mdClick(() {
            launchUrl(Uri.parse("https://twitter.com/NoIdeaIndustry"));
          })
          .make()
          .shimmer(primaryColor: ColorUtils.accentColor),
    ].hStack();
  }
}

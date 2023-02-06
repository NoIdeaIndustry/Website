import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:noideaindustry/pages/page/home.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        10.heightBox,
        "All rights reserved. "
            .richText
            .withTextSpanChildren([
              "NoIdeaIndustry™".textSpan.tap(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              }).make()
            ])
            .semiBold
            .white
            .make(),
        10.heightBox,
        [
          "Made ".richText.blue400.withTextSpanChildren(
            [
              "In ".textSpan.red400.make(),
              "Dublin ".textSpan.white.make(),
              "with".textSpan.white.make()
            ],
          ).make(),
          5.widthBox,
          const Icon(
            FontAwesome5.heart,
            color: Vx.red500,
            size: 14,
          ),
        ].hStack()
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}

import 'package:flutter/material.dart';

import 'package:noideaindustry/components/components.dart';

import 'package:noideaindustry/utils/utils.dart';

import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorUtils.primaryColor,
      child: const VStack([
        HeaderWidget(),
        ContentWidget(),
        FooterWidget(),
      ]).scrollVertical(),
    );
  }
}

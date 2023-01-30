import 'package:flutter/material.dart';

import 'package:noideaindustry/pages/page/components/components.dart';
import 'package:noideaindustry/pages/pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(21, 21, 21, 1.0),
        ),
        child: Column(
          children: const <Widget>[
            NavBar(),
            LandingPage(),
          ],
        ),
      ),
    );
  }
}

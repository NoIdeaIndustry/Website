import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:noideaindustry/utils/util/color_utils.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NoIdeaIndustry',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
            .copyWith(secondary: ColorUtils.accentColor),
      ),
      home: const HomePage(),
    );
  }
}

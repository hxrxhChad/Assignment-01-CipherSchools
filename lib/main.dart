import 'package:assignment_01_cipherschools/body/desktop.dart';
import 'package:assignment_01_cipherschools/body/mobile.dart';
import 'package:assignment_01_cipherschools/body/tablet.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:assignment_01_cipherschools/constant/responsive.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: whiteBg,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: darkC)
            .copyWith(
              bodyLarge: const TextStyle(color: darkC),
              bodyMedium: const TextStyle(color: darkC),
            ),
      ),
      title: 'Cipher Schools',
      home: const Responsivelayout(
          desktopBody: Desktop(), mobileBody: Mobile(), tabletBody: Tablet()),
    );
  }
}

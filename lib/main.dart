import 'package:assignment_01_cipherschools/body/desktop.dart';
import 'package:assignment_01_cipherschools/body/mobile.dart';
import 'package:assignment_01_cipherschools/body/tablet.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:assignment_01_cipherschools/constant/responsive.dart';
import 'package:assignment_01_cipherschools/helper/theme-prov.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences shared = await SharedPreferences.getInstance();
  final isDark = shared.getBool('is_Dark') ?? false;
  runApp(MainApp(isDark: isDark));
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
    required this.isDark,
  });
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeSetting(isDark),
        builder: (context, snapshot) {
          final setting = Provider.of<ThemeSetting>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark().copyWith(
              primaryColor: primaryColor,
              scaffoldBackgroundColor: whiteBg,
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: darkC)
                      .copyWith(
                        bodyLarge: const TextStyle(color: darkC),
                        bodyMedium: const TextStyle(color: darkC),
                      ),
            ),
            title: 'Cipher Schools',
            home: Responsivelayout(
                desktopBody: const Desktop(),
                mobileBody: Mobile(
                  isDark: setting.current,
                ),
                tabletBody: const Tablet()),
          );
        });
  }
}

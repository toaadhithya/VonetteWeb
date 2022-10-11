import 'package:admin/app_theme/theme_manager.dart';
import 'package:admin/constants.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scaled_app/scaled_app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => new ThemeNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vonette Schools Admin',
        theme: theme.getTheme(),
        // TODO: Implement dark theme
        // darkTheme: ThemeData(),
        // theme: ThemeData.light().copyWith(
        //   scaffoldBackgroundColor: bgColor,
        //   // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //   //     .apply(bodyColor: Colors.white),
        //   textTheme: Theme.of(context)
        //       .textTheme
        //       .apply(bodyColor: textColor, displayColor: textColor),
        //   canvasColor: secondaryColor,
        // ),
        home: MainScreen(),
      ),
    );
  }
}

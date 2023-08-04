import 'package:elancer_azkar_app/screens/home_screen.dart';
import 'package:elancer_azkar_app/screens/info_screen.dart';
import 'package:elancer_azkar_app/screens/lanuch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main () {
  runApp(const MyApp()) ;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate ,
        GlobalCupertinoLocalizations.delegate ,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("ar")
      ],
      locale: const Locale("ar"),
      // home: LunchSecreen(),
      initialRoute: "/launch_screen",
      routes: {
        "/launch_screen" : (context) => const LunchSecreen() ,
        "/home_screen" : (context) => const HomeScreen() ,
        "/info_screen" : (context) =>  InfoScreen(),
      },
    );
  }
}

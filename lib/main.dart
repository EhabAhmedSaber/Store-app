
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app1/constant.dart';
import 'package:store_app1/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electrical Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme(Theme.of(context).textTheme),
        primaryColor: KPrimaryColor,
        accentColor: KPrimaryColor,
      ),
      localizationsDelegates:  const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('ar', 'EG'),
      supportedLocales: const [
        Locale('ar', 'AE'),
      ],
      home: HomeScreen(),
    );
  }
}

import 'package:catalog_app/home_page.dart';
import 'package:catalog_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'catlog app',
        theme: ThemeData(
            primarySwatch: Colors.grey,
            fontFamily: GoogleFonts.lato().fontFamily),
        routes: {
          "/": (context) => LoginPage(),
          "/homepage": (context) => HomePage(),
        });
  }
}

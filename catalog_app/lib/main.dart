import 'package:catalog_app/home_page.dart';
import 'package:catalog_app/login_page.dart';
import 'package:catalog_app/pages/cart_page.dart';
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
        title: 'Catalog app',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            fontFamily: GoogleFonts.poppins().fontFamily),
        initialRoute: "/",
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/cart': (context) => CartPage()
        });
  }
}

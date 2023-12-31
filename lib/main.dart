import 'package:e_commerce/models/cart.dart';
import 'package:e_commerce/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xfff2f2f2)
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Cart(),
      builder: (context, child) =>
          MaterialApp(
              theme: ThemeData(
                  fontFamily: GoogleFonts
                      .openSans()
                      .fontFamily
              ),
              debugShowCheckedModeBanner: false,
              home: IntroPage()
          ),
        );
  }
}
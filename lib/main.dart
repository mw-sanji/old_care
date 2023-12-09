import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:old_care/screens/controllers/controller.dart';
import 'package:old_care/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Controller(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.light(),
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        home: SplashScreen(),
      ),
    );
  }
}

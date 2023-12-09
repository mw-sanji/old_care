import 'package:flutter/material.dart';
import 'package:old_care/screens/welcome_screen.dart';
import 'package:old_care/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashScreen();
  }

  _splashScreen() async {
    await Future.delayed(
      Duration(milliseconds: 1500),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colours.primaryColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2 * height / 3, bottom: 8),
              child: const Text(
                "ParenTown",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              "A community for parents",
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}

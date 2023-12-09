import 'package:flutter/material.dart';
import 'package:old_care/screens/authentication_screen.dart';
import 'package:old_care/utils/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                "Welcome to ParenTown",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const AuthenticationScreen(isLogin: false),
                  ));
            },
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colours.primaryColor),
              child: const Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const AuthenticationScreen(isLogin: true),
                  ));
            },
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colours.primaryColor),
              child: const Center(
                  child: Text(
                "Login",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
            ),
          )
        ],
      ),
    );
  }
}

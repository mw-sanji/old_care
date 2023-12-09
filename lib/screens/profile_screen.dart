import 'package:flutter/material.dart';
import 'package:old_care/screens/info_screen.dart';
import 'package:old_care/utils/colors.dart';
import 'package:old_care/widgets/app_bar.dart';
import 'package:old_care/widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const appBar(text: "Sign In"),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 8),
            child: Container(
              height: 50,
              width: 50,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: const ProfileWidget(),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoScreen(),
                  ));
            },
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: Colours.primaryColor),
              child: const Center(
                  child: Text(
                "Next",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )),
            ),
          ),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InfoScreen(),
                      ));
                },
                child: Text(
                  "Skip for now",
                  style: TextStyle(color: Colours.secondaryColor, fontSize: 16),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You can change this later in ",
                style: TextStyle(fontSize: 16, color: Colours.secondaryColor),
              ),
              Text(
                "Settings",
                style: TextStyle(
                    fontSize: 16,
                    color: Colours.secondaryColor,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      )),
    );
  }
}

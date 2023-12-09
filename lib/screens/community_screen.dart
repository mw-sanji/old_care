import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/utils/colors.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Icon(
                            CupertinoIcons.back,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  Image.asset("assets/images/logo.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "ParenTown",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Community Guidelines",
                style: TextStyle(fontSize: 32, color: Colours.secondaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Fill this out fill this out fill this out fill this out fill this out",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

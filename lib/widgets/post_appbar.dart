import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/utils/colors.dart';

class Postbar extends StatelessWidget {
  const Postbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  CupertinoIcons.back,
                  size: 35,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img1.png"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Handsome"),
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colours.primaryColor),
                child: const Center(
                    child: Text(
                  "Follow",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.ios_share,
                  size: 30,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

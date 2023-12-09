import 'package:flutter/material.dart';
import 'package:old_care/screens/community_screen.dart';
import 'package:old_care/utils/colors.dart';
import 'package:old_care/widgets/post_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colours.primaryColor,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(Icons.settings_outlined),
          )
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => PersistentNavBarNavigator.pushNewScreen(context,
                      screen: const CommunityScreen(), withNavBar: false),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("assets/images/group.png"),
                      ),
                      const Text(
                        "Community",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/friend.png"),
                    ),
                    const Text(
                      "Refer to Friends!!",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/mail.png"),
                    ),
                    const Text(
                      "Contact Us",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            color: Colours.primaryColor,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          maxRadius: 30,
                          backgroundImage: AssetImage("assets/images/img5.png"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("CooooCo"),
                          Text("ID: 123456"),
                          Text("Reputation: 1000")
                        ],
                      )
                    ],
                  ),
                  Text(
                      "Hey! I have a kid of 3 years old and I regularly post things here! Follow me!"),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("0 followers"),
                      Text("0 following"),
                      Text("0 likes"),
                    ],
                  )
                ],
              ),
            ),
          ),
          const PostView()
        ],
      )),
    );
  }
}

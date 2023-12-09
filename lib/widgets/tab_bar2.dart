import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/screens/home_page.dart';
import 'package:old_care/utils/colors.dart';

class TabBar2 extends StatefulWidget {
  const TabBar2({super.key});

  @override
  State<TabBar2> createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: TabBar(
                      indicatorColor: Colours.secondaryColor,
                      labelColor: Colors.black,
                      tabs: const [
                        Tab(
                          text: "Following",
                        ),
                        Tab(
                          text: "Nearby",
                        ),
                        Tab(
                          text: "Explore",
                        )
                      ]),
                ),
              ),
              const Expanded(
                  child: TabBarView(
                      children: [HomeScreen(), HomeScreen(), HomeScreen()]))
            ],
          )),
    );
  }
}

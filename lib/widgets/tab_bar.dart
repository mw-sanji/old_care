import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/screens/message_screen.dart';
import 'package:old_care/screens/notification_screen.dart';
import 'package:old_care/utils/colors.dart';

class NotificationTabBAr extends StatefulWidget {
  const NotificationTabBAr({super.key});

  @override
  State<NotificationTabBAr> createState() => _NotificationTabBArState();
}

class _NotificationTabBArState extends State<NotificationTabBAr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colours.primaryColor,
                          borderRadius: BorderRadius.circular(50)),
                      labelColor: Colors.black,
                      tabs: [
                        const Tab(
                          text: "Notification",
                        ),
                        const Tab(
                          text: "Message",
                        )
                      ]),
                ),
              ),
              const Expanded(
                  child: TabBarView(
                      children: [NotificationScreen(), MessageScreen()]))
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:old_care/screens/message_screen.dart';
import 'package:old_care/screens/notification_screen.dart';
import 'package:old_care/utils/colors.dart';

class NotificationAppBar extends StatefulWidget {
  const NotificationAppBar({super.key});

  @override
  State<NotificationAppBar> createState() => _NotificationAppBarState();
}

class _NotificationAppBarState extends State<NotificationAppBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildItem(0, context, "Notifications"),
          buildItem(1, context, "Messages")
        ],
      ),
    );
  }

  Widget buildItem(int index, BuildContext context, String text) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        if (_selectedIndex == 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationScreen()));
        }
        if (_selectedIndex == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MessageScreen()));
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 130,
        height: 50,
        decoration: _selectedIndex == index
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colours.primaryColor)
            : const BoxDecoration(),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

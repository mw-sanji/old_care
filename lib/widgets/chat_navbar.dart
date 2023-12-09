import 'package:flutter/material.dart';

class ChatNavBar extends StatelessWidget {
  const ChatNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              width: 2 * MediaQuery.of(context).size.width / 3,
              color: const Color(0xffeeeeee),
              child: const TextField(
                decoration: InputDecoration(border: InputBorder.none),
              )),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.emoji_emotions_outlined,
            size: 32,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/plus.png"),
        )
      ],
    );
  }
}

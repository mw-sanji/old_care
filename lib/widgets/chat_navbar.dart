import 'package:flutter/material.dart';
import 'package:old_care/screens/controllers/controller.dart';
import 'package:provider/provider.dart';

class ChatNavBar extends StatefulWidget {
  const ChatNavBar({super.key});

  @override
  State<ChatNavBar> createState() => _ChatNavBarState();
}

class _ChatNavBarState extends State<ChatNavBar> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              width: 4 * MediaQuery.of(context).size.width / 7,
              color: const Color(0xffeeeeee),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
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
        ),
        IconButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                Provider.of<Controller>(context, listen: false)
                    .addChat(controller.text);
              }
              controller.clear();
            },
            icon: const Icon(Icons.send))
      ],
    );
  }
}

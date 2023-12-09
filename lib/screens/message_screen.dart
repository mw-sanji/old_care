import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/screens/chat_screen.dart';
import 'package:old_care/utils/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colours.primaryColor),
                  child: const Center(
                      child: Text(
                    "Start Chat",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => PersistentNavBarNavigator.pushNewScreen(context,
                      screen: ChatScreen(), withNavBar: false),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.grey)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/img6.png"),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text("Tomlol"), Text("9:56 AM")],
                                ),
                                Text(
                                  "this is a message",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ))
          ],
        )),
      ),
    );
  }
}

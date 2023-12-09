import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.grey)),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/img6.png"),
                          ),
                        ),
                        Text("Tomlol ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14)),
                        Text("mentioned you in a comment")
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

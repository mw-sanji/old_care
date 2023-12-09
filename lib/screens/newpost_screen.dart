import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/screens/controllers/controller.dart';
import 'package:old_care/utils/colors.dart';
import 'package:old_care/widgets/dialog_box.dart';
import 'package:old_care/widgets/tag_view.dart';
import 'package:provider/provider.dart';

class NewPostScreen extends StatefulWidget {
  const NewPostScreen({super.key});

  @override
  State<NewPostScreen> createState() => _NewPostScreenState();
}

class _NewPostScreenState extends State<NewPostScreen> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Consumer<Controller>(
      builder: (context, value, child) {
        return CupertinoPageScaffold(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: Row(),
            body: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(CupertinoIcons.back),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colours.primaryColor),
                        child: const Center(
                          child: Text(
                            "send",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Title Here!!!",
                      hintStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
                Container(
                  height: 80,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Share more description here"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => DialogBox(),
                      );
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colours.secondaryColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colours.secondaryColor)),
                      child: const Center(
                          child: Text("Add Tag",
                              style: TextStyle(color: Colors.white))),
                    ),
                  ),
                ),
                Container(
                  height: value.getTags().isEmpty ? 0 : 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        value.getTags().isEmpty ? 0 : value.getTags().length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colours.secondaryColor)),
                          child: Center(child: Text(value.getTags()[index])),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/addpics.png"),
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colours.secondaryColor,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                    const Text("Is this a question?")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Help is find you audience",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "This post is related to",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const TagView(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "The tages here all are kids ages",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            )),
          ),
        );
      },
    );
  }
}

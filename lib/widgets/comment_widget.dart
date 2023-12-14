import 'package:flutter/material.dart';
import 'package:old_care/utils/colors.dart';

class CommentWidget extends StatefulWidget {
  CommentWidget({super.key});

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          child: const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/img1.png"),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("Handsome",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(width: 5),
                        Container(
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey[400]),
                          child: const Center(
                            child: Text("Author",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold)),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Icon(Icons.favorite_border),
                    )
                  ],
                ),
              ),
              Center(
                child: Container(
                    width: 300,
                    child: const Text(
                        "Feel free to schedule a visit through our webpage!")),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("06-20", style: TextStyle(color: Colors.grey)),
                    Padding(
                      padding: EdgeInsets.only(right: 18.0),
                      child: Text("1K",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colours.primaryColor),
                      child: const Center(
                        child: Text(
                          "Add Comment",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star_outline),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1K",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isClicked = !isClicked;
                            });
                          },
                          icon: !isClicked
                              ? const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1K",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Icon(Icons.comment_outlined)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

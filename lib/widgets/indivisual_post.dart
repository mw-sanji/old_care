// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'package:old_care/screens/post_screen.dart';

class IndivisualPost extends StatefulWidget {
  final int index;
  IndivisualPost({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<IndivisualPost> createState() => _IndivisualPostState();
}

class _IndivisualPostState extends State<IndivisualPost> {
  var isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => PersistentNavBarNavigator.pushNewScreen(context,
            screen: const PostScreen(), withNavBar: false),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/img${widget.index + 1}.png"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "klsjkldsajlkdjlksajdlkjwijlksjdlksajdoiwjdsajdklsajldjwijdlsajdlksajdijwidjlkasdjlkasjdoia"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "assets/images/img${widget.index + 1}.png"),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Carol",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => () {
                          setState(() {
                            isTapped = !isTapped;
                          });
                        },
                        child: Icon(
                          isTapped ? Icons.favorite_border : Icons.favorite,
                          size: 20,
                          color: isTapped ? Colors.red : Colors.transparent,
                        ),
                      ),
                      const Text(
                        "15",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

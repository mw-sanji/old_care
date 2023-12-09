import 'package:flutter/material.dart';
import 'package:old_care/utils/colors.dart';
import 'package:old_care/widgets/comment_widget.dart';
import 'package:old_care/widgets/post_appbar.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Postbar(),
            Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/img3.png",
                  fit: BoxFit.cover,
                )),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "I want to recommend this swim club at Palo Alto!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This club is awesome and it is not expensive! My kid had fun there and made a lot of new friends! The staffs are friendly too! It is called CoolSwimming.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colours.secondaryColor)),
                child: const Center(
                  child: Text(
                    "Swimming",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("06-20", style: TextStyle(color: Colors.grey)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
              ),
            ),
            Center(
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colours.primaryColor),
                child: const Center(
                  child: Text(
                    "Tell other what you think",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const CommentWidget()
          ],
        ),
      ),
    );
  }
}

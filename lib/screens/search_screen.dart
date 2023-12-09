import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              decoration: const BoxDecoration(
                  border: BorderDirectional(
                      bottom: BorderSide(color: Colors.grey))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xfff2f4f5),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.mic_none_outlined),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Recent Searches",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Example 1",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Example 2",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Example 1",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Example 2",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

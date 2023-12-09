import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:old_care/widgets/post_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Scaffold(
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [PostView()],
        )),
      ),
    );
  }
}

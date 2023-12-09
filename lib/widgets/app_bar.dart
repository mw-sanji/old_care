import 'package:flutter/cupertino.dart';

class appBar extends StatelessWidget {
  final String text;
  const appBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(CupertinoIcons.back, size: 50)),
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.only(left: 70),
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
        ))
      ],
    );
  }
}

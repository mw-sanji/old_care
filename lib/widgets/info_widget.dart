import 'package:flutter/material.dart';
import 'package:old_care/utils/colors.dart';

class InfoWidget extends StatefulWidget {
  const InfoWidget({super.key});

  @override
  State<InfoWidget> createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 110.0),
          child: Text(
            "How old are you kids?",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: Text(
            "We use this information to better recommend contents to you!It doesn’t need to be exact!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      filterQuality: FilterQuality.high,
                      image: AssetImage("assets/images/profile1.png"))),
            ),
            Text(
              "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () => _showDatePicker(),
              child: Image.asset(
                "assets/images/down.png",
                filterQuality: FilterQuality.high,
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 56,
          width: 230,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colours.primaryColor),
          child: Center(
              child: Text(
            "Add another kid",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Are you a Mom or a Dad?",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:old_care/screens/controllers/controller.dart';
import 'package:old_care/utils/colors.dart';
import 'package:provider/provider.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colours.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Enter a Tag",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: "Enter Tag"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: () {
                  if (controller.text.isNotEmpty) {
                    Provider.of<Controller>(context, listen: false)
                        .addTags(controller.text);
                  }
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colours.secondaryColor),
                  child: const Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(fontSize: 16, color: Colours.secondaryColor),
                ))
          ],
        ),
      ),
    );
  }
}

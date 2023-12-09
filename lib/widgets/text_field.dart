import 'package:flutter/material.dart';

class CustumTextField extends StatefulWidget {
  final bool isPassword;
  TextEditingController controller;
  final String hintText;
  CustumTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.isPassword});

  @override
  State<CustumTextField> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustumTextField> {
  @override
  Widget build(BuildContext context) {
    widget.controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: const TextStyle(fontSize: 20),
        cursorHeight: 30,
        controller: widget.controller,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
            fillColor: const Color(0xfff6f6f6),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.white)),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
                color: Color(0xffbdbdbd),
                fontWeight: FontWeight.bold,
                fontSize: 24)),
      ),
    );
  }
}

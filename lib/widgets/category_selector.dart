import 'package:flutter/material.dart';
import 'package:old_care/utils/colors.dart';

class CategorySelector extends StatefulWidget {
  final String text;
  final bool isSelected;
  final Function() onTap;
  const CategorySelector(
      {super.key,
      required this.isSelected,
      required this.onTap,
      required this.text});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            border: widget.isSelected
                ? BorderDirectional(
                    bottom: BorderSide(color: Colours.secondaryColor))
                : Border(bottom: BorderSide.none)),
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}

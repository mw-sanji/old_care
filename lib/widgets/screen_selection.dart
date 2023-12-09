import 'package:flutter/material.dart';
import 'package:old_care/widgets/category_selector.dart';

class ScreenSelection extends StatefulWidget {
  const ScreenSelection({super.key});

  @override
  State<ScreenSelection> createState() => _ScreenSelectionState();
}

class _ScreenSelectionState extends State<ScreenSelection> {
  late int selectedOptionIndex;
  List<String> options = ['Following', 'Nearby', 'Explore'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedOptionIndex = 0;
  }

  void handleOptionTap(int index) {
    setState(() {
      selectedOptionIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 8),
      child: Container(
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return CategorySelector(
                isSelected: selectedOptionIndex == index,
                onTap: () {
                  handleOptionTap(index);
                },
                text: options[index]);
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:old_care/utils/colors.dart';

class TagView extends StatelessWidget {
  const TagView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colours.secondaryColor)),
                    child: const Center(child: Text("Pregnancy")),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colours.secondaryColor)),
                    child: const Center(child: Text("Pregnancy")),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colours.secondaryColor)),
                    child: const Center(child: Text("Pregnancy")),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colours.secondaryColor)),
                    child: const Center(child: Text("Pregnancy")),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("1y-2y")),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("2y-3y")),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("3y-4y")),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("4y-5y")),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: const Center(child: Text("5y+")),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

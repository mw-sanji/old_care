import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  List<String> _tags = [];
  List<String> getTags() {
    return _tags;
  }

  void addTags(String tag) {
    _tags.add(tag);
    notifyListeners();
  }
}

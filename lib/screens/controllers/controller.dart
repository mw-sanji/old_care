import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  List<String> _tags = [];
  List<String> getTags() {
    return _tags;
  }

  List<String> _chats = [];
  List<String> getChats() {
    return _chats;
  }

  void addTags(String tag) {
    _tags.add(tag);
    notifyListeners();
  }

  void addChat(String chat) {
    _chats.add(chat);
    notifyListeners();
  }
}

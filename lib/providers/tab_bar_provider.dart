import 'package:flutter/material.dart';

class TabBarProvider with ChangeNotifier {

  TabBarProvider(this._controller);

  final TabController _controller;

  TabController get controller => _controller;

  void changeIndex(int i){
    _controller.index = i;
    notifyListeners();
  }


}
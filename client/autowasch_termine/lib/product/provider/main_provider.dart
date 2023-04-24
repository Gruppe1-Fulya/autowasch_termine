import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier {

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;

  set pageIndex(int value) {
    _pageIndex = value;
    notifyListeners();
  }
}

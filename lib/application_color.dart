import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier{

bool _isLightBlue = true;

bool get isLightBlue => _isLightBlue;

void toogleSwitch(){
  _isLightBlue = !_isLightBlue;
  notifyListeners();
}

Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber ;

}
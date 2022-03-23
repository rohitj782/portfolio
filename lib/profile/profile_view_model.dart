import 'package:flutter/material.dart';

class ProfileViewModel with ChangeNotifier {
  String name = "Joe";

  init(){
    name = "Rohit Joshi";
    notifyListeners();
  }


}
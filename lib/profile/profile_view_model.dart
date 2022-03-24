import 'dart:io';

import 'package:flutter/foundation.dart';

class ProfileViewModel with ChangeNotifier {
  String name = "I AM ROHIT JOSHI";
  String introduction =
      "I love developing applications and solve complex problems."
      "\nExperience in developing Android apps (Java/Kotlin), Java (Spring boot/Angular),"
      " Flutter (Android/IOS).";
  double fontLarge = 32;

  ProfileViewModel() {
    if (kIsWeb) {
      // running on the web!
    }

    notifyListeners();
  }
}

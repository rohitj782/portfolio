import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class AppBarViewModel with ChangeNotifier {
  double fontSmall = 16;
  double fontMedium = 24;
  double fontLarge = 32;
  double sizedBoxWidth = 10;
  double buttonWidth = 80;

  AppBarViewModel() {
    debugPrint(SizeConfig.screenWidth.toString());
    double multiplier = 1.2;
    if (SizeConfig.screenWidth < 800) multiplier = 2.25;
    fontSmall = SizeConfig.blockSizeHorizontal * 1 * multiplier;
    fontMedium = SizeConfig.blockSizeHorizontal * 1.5 * multiplier;
    fontLarge = SizeConfig.blockSizeHorizontal * 2 * multiplier;
    sizedBoxWidth = SizeConfig.blockSizeHorizontal / multiplier;
    buttonWidth = SizeConfig.blockSizeHorizontal * 8;
  }
}

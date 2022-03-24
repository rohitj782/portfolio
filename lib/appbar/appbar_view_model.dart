import '../utils/size_config.dart';

class AppBarViewModel {
  double fontSmall = 16;
  double fontMedium = 24;
  double fontLarge = 32;
  double sizedBoxWidth = 10;
  double buttonWidth = 80;

  AppBarViewModel() {
    double multiplier = 1;
    if(SizeConfig.screenWidth<800) multiplier = 2;
    fontSmall = SizeConfig.blockSizeHorizontal * 1*multiplier;
    fontMedium = SizeConfig.blockSizeHorizontal * 1.5 * multiplier;
    fontLarge = SizeConfig.blockSizeHorizontal * 2*multiplier;
    sizedBoxWidth = SizeConfig.blockSizeHorizontal/2;
    buttonWidth = SizeConfig.blockSizeHorizontal * 10;
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_config.dart';
import 'package:provider/provider.dart';

import 'appbar_view_model.dart';

class AppBarView extends StatefulWidget {
  const AppBarView({Key? key}) : super(key: key);

  @override
  State<AppBarView> createState() => _AppBarViewState();
}

class _AppBarViewState extends State<AppBarView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppBarViewModel(),
      child: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal * 5, 8,
            SizeConfig.blockSizeHorizontal * 5, 8),
        child: Card(
          color: Colors.grey[800],
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<AppBarViewModel>(
                builder: (context, appBarViewModel, child) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: appBarViewModel.sizedBoxWidth * 4,
                  ),
                  Text(
                    "ROHIT",
                    style: TextStyle(
                        letterSpacing: 2,
                        fontSize: appBarViewModel.fontLarge,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Spacer(),
                  MaterialButton(
                    onPressed: () {
                      debugPrint(SizeConfig.screenWidth.toString());
                    },
                    height: 50,
                    minWidth: appBarViewModel.buttonWidth,
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontSize: appBarViewModel.fontSmall,
                          color: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    width: appBarViewModel.sizedBoxWidth,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: 50,
                    minWidth: appBarViewModel.buttonWidth,
                    child: Text(
                      "About",
                      style: TextStyle(
                          fontSize: appBarViewModel.fontSmall,
                          color: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    width: appBarViewModel.sizedBoxWidth,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: 50,
                    minWidth: appBarViewModel.buttonWidth,
                    child: Text(
                      "Journey",
                      style: TextStyle(
                          fontSize: appBarViewModel.fontSmall,
                          color: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    width: appBarViewModel.sizedBoxWidth,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: 50,
                    minWidth: appBarViewModel.buttonWidth,
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                          fontSize: appBarViewModel.fontSmall,
                          color: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    width: appBarViewModel.sizedBoxWidth,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    height: 50,
                    minWidth: appBarViewModel.buttonWidth,
                    child: Text(
                      "Connect",
                      style: TextStyle(
                          fontSize: appBarViewModel.fontSmall,
                          color: Colors.white70),
                    ),
                  ),
                  SizedBox(
                    width: appBarViewModel.sizedBoxWidth,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

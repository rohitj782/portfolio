import 'package:flutter/material.dart';
import 'package:portfolio/profile/profile_view.dart';
import 'package:portfolio/utils/size_config.dart';

import '../appbar/appbar_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    debugPrint("Called - Build Home");
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: const [
          SizedBox(
            height: 20,
          ),
          AppBarView(),
          SizedBox(
            height: 50,
          ),
          ProfileView()
        ],
      ),
    );
  }
}

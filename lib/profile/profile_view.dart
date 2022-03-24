import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/profile/profile_view_model.dart';
import 'package:provider/provider.dart';

import '../utils/size_config.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<ProfileViewModel>(
      create: (context) => ProfileViewModel(),
      child: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal*5,8,SizeConfig.blockSizeHorizontal*5,8),
        child: Card(
          color: Colors.grey[800],
          child: SizedBox(
            width: double.infinity,
            height: 500,
            child: Consumer<ProfileViewModel>(
              builder: (context, profileViewModel, child) {
                return Column(
                  children: [
                    const Spacer(
                      flex: 2,
                    ),
                    const CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage(
                        "assets/images/profile_pic.jpeg",
                      ),
                    ),
                    const Spacer(),
                    Text(
                      profileViewModel.name,
                      style: TextStyle(
                          wordSpacing: 2,
                          letterSpacing: 2,
                          fontSize: profileViewModel.fontLarge,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    Center(
                      child: Text(
                        profileViewModel.introduction,
                        style: const TextStyle(
                            wordSpacing: 1,
                            letterSpacing: 1,
                            fontSize: 12,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

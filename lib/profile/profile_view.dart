import 'package:flutter/material.dart';
import 'package:portfolio/profile/profile_view_model.dart';
import 'package:provider/provider.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProfileViewModel>(
      create: (context) => ProfileViewModel(),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: 400,
        child : Consumer<ProfileViewModel>(
          builder: (context, profileViewModel, child){
            return MaterialButton(
                onPressed:(){
                  profileViewModel.init();
                },
                child: Text(profileViewModel.name));
          },
        ),

      ),
    );
  }
}

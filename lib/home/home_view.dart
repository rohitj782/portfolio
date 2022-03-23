import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/profile/profile_view.dart';
import 'package:provider/provider.dart';

import 'home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Provider<HomeViewModel>(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Consumer<HomeViewModel>(
            builder: (context,homeViewModel,child){
              return Text(
                homeViewModel.title,
                style: const TextStyle(
                  letterSpacing: 2,
                  wordSpacing: 2,
                  color: Colors.white,
                  fontSize: 32
                ),
              );
            }
          ),
          elevation: 5,
          centerTitle: true,
          backgroundColor: Colors.black87,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: const [
              ProfileView()
            ],
          ),
        ),
      ),
    );
  }
}

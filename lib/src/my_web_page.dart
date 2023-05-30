import 'package:basic_landing_webpage/src/navigation_bar/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import 'content/contact.dart';
import 'content/features_ontent.dart';
import 'content/home_content.dart';
import 'content/screenshots_content.dart';


final scrolledProvider = StateProvider<bool>((_) => false);

class MyWebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double maxWith = width > 1300 ? 1200 : width;

    return Scaffold(
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          width: maxWith,
          child: Column(
            children: [
              NavBar(),
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: <Widget>[
                      HomeContent(),
                      ScreenshotsContent(),
                      FeaturesContent(),
                      ContactContent()
                // VideoPlayerApp(),
                //  FeaturesContent(),
              ])))
            ],
          ),
        ),
      ),
    );
  }
}

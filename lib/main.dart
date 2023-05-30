import 'package:basic_landing_webpage/src/my_web_page.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  setPathUrlStrategy();
  runApp(
    ProviderScope(
    child: MaterialApp(
    title: "Basic Landing Page",
    home: MyWebPage()    
  )),

  );
}

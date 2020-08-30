import 'package:flutter/cupertino.dart';
import 'package:flutter_playground/pages/animation_button/animation_button_page.dart';

import 'package:flutter_playground/pages/index.dart';

class Router {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case IndexPage.path:
        return CupertinoPageRoute<void>(
          builder: (context) => IndexPage(),
        );
        break;
      case AnimationButtonPage.path:
        return CupertinoPageRoute<void>(
          builder: (context) => AnimationButtonPage(),
        );
        break;
      default:
        return null;
    }
  }
}

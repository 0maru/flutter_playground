import 'package:flutter/cupertino.dart';

import 'package:flutter_playground/pages/animation_button.dart';
import 'package:flutter_playground/pages/index.dart';

class Router {
  static const initialRoute = IndexPage.path;

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
        assert(false);
        return null;
    }
  }
}

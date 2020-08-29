import 'package:flutter/material.dart';
import 'package:flutter_playground/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Play Ground',
      initialRoute: Router.initialRoute,
      onGenerateRoute: Router().generateRoute,
    );
  }
}

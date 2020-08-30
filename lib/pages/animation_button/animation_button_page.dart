import 'package:flutter/material.dart';
import 'widget/animate_button.dart';

class AnimationButtonPage extends StatelessWidget {
  static const path = '/animation_button_page';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('click to animation image'),
      ),
      body: SafeArea(
        child: Center(
          child: AnimateButton(),
        ),
      ),
    );
  }
}

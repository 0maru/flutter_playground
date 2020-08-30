import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/animation_button/widget/transform_image.dart';
import 'package:flutter_svg/svg.dart';

class AnimateButton extends StatefulWidget {
  AnimateButton({Key key}) : super(key: key);

  @override
  _AnimateButtonState createState() => _AnimateButtonState();
}

class _AnimateButtonState extends State<AnimateButton> {
  bool favotite;
  bool _isAnimate = false;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: _isAnimate ? TransformImage() : SvgPicture.asset('assets/images/favorite.svg'),
      onPressed: () {
        setState(() {
          _isAnimate = true;
        });
        Future.delayed(Duration(milliseconds: 540), {});
      },
    );
  }
}

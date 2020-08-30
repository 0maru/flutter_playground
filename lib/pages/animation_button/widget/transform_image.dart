import 'package:flutter/material.dart';

const double IMAGE_SIZE = 50;

class TransformImage extends StatefulWidget {
  TransformImage({Key key}) : super(key: key);

  @override
  _TransformImageState createState() => _TransformImageState();
}

class _TransformImageState extends State<TransformImage> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<int> _animation;
  int _width = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat();
    _animation = StepTween(begin: 0, end: 18).animate(_controller);
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   height: IMAGE_SIZE,
    //   width: IMAGE_SIZE,
    //   child: _buildSpriteImage(context),
    // );
    return Container(
      width: IMAGE_SIZE,
      height: IMAGE_SIZE,
      child: ClipRect(
        clipBehavior: Clip.antiAlias,
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxHeight: IMAGE_SIZE,
          maxWidth: IMAGE_SIZE * (18 + 1),
          child: AnimatedBuilder(
            animation: _animation,
            child: Image.asset('assets/images/favorite_sprite.png'),
            builder: (BuildContext context, Widget child) {
              // print(_animation.value);
              return Transform.translate(
                child: child,
                offset: Offset(IMAGE_SIZE * 12, 0),
              );
            },
          ),
        ),
      ),
    );
  }
}

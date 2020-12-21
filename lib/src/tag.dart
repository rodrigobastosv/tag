import 'package:flutter/material.dart';

import 'clippers/triangle_clipper.dart';

class Tag extends StatelessWidget {
  Tag({
    Key key,
    @required this.child,
    @required this.text,
    this.textStyle,
    this.labelDecoration,
    this.color,
    this.tagHeight = 40,
    this.tagWidth = 120,
    this.cornerHeight = 10,
    this.cornerWidth = 10,
    this.spacing = 2,
    this.rightPadding = 0,
    this.isVisible = true,
  }) : super(key: key);

  final Widget child;
  final String text;
  final TextStyle textStyle;
  final BoxDecoration labelDecoration;
  final Color color;
  final double tagHeight;
  final double tagWidth;
  final double cornerHeight;
  final double cornerWidth;
  final double spacing;
  final double rightPadding;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        child,
        if (isVisible) Positioned(
          right: rightPadding,
          bottom: -spacing - cornerHeight - tagHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipPath(
                clipper: TriangleClipper(),
                child: Container(
                  color: color,
                  height: cornerHeight,
                  width: cornerWidth,
                ),
              ),
              Container(
                decoration: labelDecoration?.copyWith(
                  color: color,
                ),
                height: tagHeight,
                width: tagWidth,
                child: Center(
                  child: Text(
                    text,
                    style: textStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

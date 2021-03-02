import 'package:flutter/material.dart';

import 'clippers/triangle_clipper.dart';

class Tag extends StatelessWidget {
  Tag({
    Key? key,
    required this.child,
    required this.text,
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

  /// Widget that will receive the tag
  final Widget child;

  /// Text to go on the tag if any
  final String text;

  /// Style of the text
  final TextStyle? textStyle;
  final BoxDecoration? labelDecoration;
  final Color? color;

  /// Height of the tag
  final double tagHeight;

  /// Width of the tag
  final double tagWidth;

  final double cornerHeight;
  final double cornerWidth;
  final double spacing;
  final double rightPadding;

  /// Wheter the tag is visible or not
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        if (isVisible)
          Positioned(
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

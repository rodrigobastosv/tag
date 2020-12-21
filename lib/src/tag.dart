import 'package:flutter/material.dart';

import 'clippers/triangle_clipper.dart';

class Tag extends StatefulWidget {
  Tag({
    this.key,
    this.child,
    this.text,
    this.textStyle,
    this.labelDecoration,
    this.color,
    this.tagHeight = 40,
    this.tagWidth = 120,
    this.cornerHeight = 10,
    this.cornerWidth = 10,
    this.spacing = 2,
    this.rightPadding = 0,
    this.removeIcon,
  }) : super(key: key);

  final Key key;
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
  final Icon removeIcon;

  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {
  bool isTagVisible;
  OverlayEntry overlayEntry;

  @override
  void initState() {
    isTagVisible = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(overlayEntry);
    });
    super.initState();
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject();
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        right: offset.dx + widget.rightPadding,
        bottom:
            offset.dy - widget.spacing - widget.cornerHeight - widget.tagHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipPath(
              clipper: TriangleClipper(),
              child: Container(
                color: widget.color,
                height: widget.cornerHeight,
                width: widget.cornerWidth,
              ),
            ),
            Material(
              child: Container(
                decoration: widget.labelDecoration.copyWith(
                  color: widget.color,
                ),
                height: widget.tagHeight,
                width: widget.tagWidth,
                child: widget.removeIcon != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              widget.text,
                              style: widget.textStyle,
                            ),
                          ),
                          IconButton(
                            onPressed: () => overlayEntry.remove(),
                            icon: widget.removeIcon,
                            color: widget.textStyle.color,
                          ),
                        ],
                      )
                    : Center(
                        child: Text(
                          widget.text,
                          style: widget.textStyle,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double? height;
  final double? width;
  const Space({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 0.0,
      width: width ?? 0.0,
    );
  }
}
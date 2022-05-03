import 'package:flutter/material.dart';

class HSpace extends StatelessWidget {
  const HSpace({
    Key? key,
    this.height,
  }) : super(key: key);

  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 10,
    );
  }
}

class WSpace extends StatelessWidget {
  const WSpace({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 10,
    );
  }
}

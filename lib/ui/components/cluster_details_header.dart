import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monitest/ui/components/space.dart';

class ClusterDetailsHeader extends StatelessWidget {
  const ClusterDetailsHeader({
    Key? key,
    required this.svg,
    required this.title,
  }) : super(key: key);

  final String svg;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/images/$svg.svg'),
        WSpace(),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        )
      ],
    );
  }
}

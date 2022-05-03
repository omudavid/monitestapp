import 'package:flutter/material.dart';

class BlackCurvedContainer extends StatelessWidget {
  const BlackCurvedContainer(
      {Key? key, required this.title, required this.value, required this.color})
      : super(key: key);

  final String title;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      height: 30,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: RichText(
        text: TextSpan(
          text: title,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          children: [
            TextSpan(
              text: value,
              style: TextStyle(
                  color: color, fontSize: 14, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}

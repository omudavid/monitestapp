import 'package:flutter/material.dart';
import 'package:monitest/ui/components/custom_spacer.dart';
import 'package:monitest/ui/components/space.dart';

class LoanSection extends StatelessWidget {
  const LoanSection(
      {Key? key,
      required this.title,
      required this.image,
      required this.name,
      required this.remark,
      required this.amount,
      required this.color})
      : super(key: key);

  final String title;
  final String image;
  final String name;
  final String remark;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          HSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 13.16),
              ),
              Container(
                height: 2,
                width: 10,
                color: Colors.black,
              )
            ],
          ),
          HSpace(),
          Divider(),
          HSpace(),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/avatar.png'),
                  WSpace(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(fontSize: 13.16),
                          ),
                          WSpace(
                            width: 5,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFC4C4C4)),
                          ),
                          WSpace(
                            width: 5,
                          ),
                          Text(
                            remark,
                            style: TextStyle(fontSize: 12, color: color),
                          )
                        ],
                      ),
                      Text(
                        amount,
                        style: TextStyle(
                            fontSize: 12,
                            color: color,
                            fontWeight: FontWeight.bold),
                      ),
                      HSpace(),
                    ],
                  )
                ],
              ),
              Divider()
            ],
          ),
        ],
      ),
    );
  }
}

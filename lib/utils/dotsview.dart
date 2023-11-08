import 'package:flutter/material.dart';
import 'package:insurance_agency/components/space.dart';

class Dots extends StatelessWidget {
  const Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey.shade600),
        ),
        horizental(7),
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey.shade600),
        ),
        horizental(7),
        Container(
          width: 21,
          height: 7,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}

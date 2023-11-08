import 'package:flutter/material.dart';
import 'package:insurance_agency/components/space.dart';
import 'package:insurance_agency/utils/textstyle.dart';

class Circularavtar extends StatelessWidget {
  VoidCallback? ontap;
  String? img;
  String? title;
  Circularavtar({super.key, this.img, this.ontap, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: ontap,
          child: CircleAvatar(
              backgroundColor: const Color(0xffBCD9AE).withOpacity(0.3),
              radius: 30,
              child: Image.asset(img.toString())),
        ),
        vertical(11),
        Text(
          title.toString(),
          style: getregular(11, const Color(0xff20271F)),
        )
      ],
    );
  }
}

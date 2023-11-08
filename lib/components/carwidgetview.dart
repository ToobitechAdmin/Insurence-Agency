import 'package:flutter/material.dart';
import 'package:insurance_agency/utils/textstyle.dart';

Widget carviewcard(String title, String subtitle, String img, context) {
  return Padding(
    padding: const EdgeInsets.only(right: 30),
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      height: 260,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffFFFFFF), Color(0xffF8F6F5)],
              end: Alignment(0, -1),
              begin: Alignment(0, -0.3))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: getbold(18, Colors.black),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
              )
            ],
          ),
          Text(
            subtitle,
            style: getregular(12, const Color(0xff797A74)),
          ),
          const Spacer(),
          Image.asset(img)
        ],
      ),
    ),
  );
}

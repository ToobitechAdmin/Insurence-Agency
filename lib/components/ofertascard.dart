import 'package:flutter/material.dart';
import 'package:insurance_agency/utils/textstyle.dart';

import 'space.dart';

Widget ofertascard(context) {
  return SizedBox(
    height: 90,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.3),
          child: const Divider(
            height: 4,
            thickness: 2,
            color: Color(0xffEBE7E5),
          ),
        ),
        SizedBox(
          height: 50,
          child: Row(
            children: [
              Image.asset(
                'assets/images/icons/wheel.png',
                height: 50,
                width: 50,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ofertas',
                      style: getregular(12, const Color(0xff797A74))),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                        'Realiza tu prueba de manejo con Nosotros “Gratis”',
                        style: getmedium(12, Colors.black)),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_rounded),
              horizental(30)
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.3),
          child: const Divider(
            height: 4,
            thickness: 2,
            color: Color(0xffEBE7E5),
          ),
        )
      ],
    ),
  );
}

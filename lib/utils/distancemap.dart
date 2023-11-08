import 'package:flutter/material.dart';
import 'package:insurance_agency/components/space.dart';

class Travelmap extends StatefulWidget {
  double distance;
  Travelmap({super.key, required this.distance});

  @override
  State<Travelmap> createState() => _TravelmapState();
}

class _TravelmapState extends State<Travelmap> {
  @override
  Widget build(BuildContext context) {
    double distance = widget.distance;
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 4,
              color: const Color(0xffD5D8DB),
            ),
          ),
          verticalbar(
              (0 * 0.22),
              (distance / 100 > 0 * 0.21)
                  ? const Color(0xff53A4E0)
                  : const Color(0xffD5D8DB),
              '1 mes',
              context),
          verticalbar(
              (1 * 0.22),
              (distance / 100 > 1 * 0.21)
                  ? const Color(0xff53A4E0)
                  : const Color(0xffD5D8DB),
              '3 meses',
              context),
          verticalbar(
              (2 * 0.22),
              (distance / 100 > 2 * 0.21)
                  ? const Color(0xff53A4E0)
                  : const Color(0xffD5D8DB),
              '6 meses',
              context),
          verticalbar(
              (3 * 0.22),
              (distance / 100 > 3 * 0.21)
                  ? const Color(0xff53A4E0)
                  : const Color(0xffD5D8DB),
              '1 año',
              context),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * (distance / 100),
                  height: 4,
                  color: const Color(0xff53A4E0),
                ),
                const CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xff53A4E0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget verticalbar(double position, Color color, String title, context) {
  return Positioned(
    left: MediaQuery.of(context).size.width * position,
    child: Column(
      crossAxisAlignment: (position == 0)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        Container(
          width: 3,
          height: 20,
          color: color,
        ),
        vertical(5),
        Text(
          title,
          style: const TextStyle(fontSize: 10),
        )
      ],
    ),
  );
}

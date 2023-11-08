import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 17,
          backgroundImage: AssetImage(
            'assets/images/icons/person.png',
          ),
        ),
        InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Stack(children: [
                Image.asset(
                  'assets/images/icons/bell.png',
                  width: 25,
                  height: 25,
                ),
                Positioned(
                  left: 15,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                )
              ]),
            ],
          ),
        )
      ],
    );
  }
}

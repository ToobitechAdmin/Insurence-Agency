import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding:
            const EdgeInsets.only(left: 65, right: 65, bottom: 15, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: (() {
                  setState(() {
                    index = 1;
                  });
                }),
                child: (index == 1)
                    ? Image.asset('assets/images/icons/homeicon.png')
                    : Image.asset('assets/images/icons/homeicon_grey.png')),
            InkWell(
                onTap: (() {
                  setState(() {
                    index = 2;
                  });
                }),
                child: (index == 2)
                    ? Image.asset('assets/images/icons/chaticon.png')
                    : Image.asset('assets/images/icons/chaticon_grey.png')),
            InkWell(
                onTap: (() {
                  setState(() {
                    index = 3;
                  });
                }),
                child: (index == 3)
                    ? Image.asset('assets/images/icons/searchicon.png')
                    : Image.asset('assets/images/icons/searchicon_grey.png')),
            InkWell(
                onTap: (() {
                  setState(() {
                    index = 4;
                  });
                }),
                child: (index == 4)
                    ? Image.asset('assets/images/icons/usericon.png')
                    : Image.asset('assets/images/icons/usericon_grey.png')),
          ],
        ),
      ),
    );
  }
}

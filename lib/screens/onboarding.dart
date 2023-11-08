import 'package:flutter/material.dart';
import 'package:insurance_agency/screens/homeinsurance.dart';
import 'package:insurance_agency/utils/dotsview.dart';
import 'package:insurance_agency/utils/textstyle.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/onboardingbg.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height * 0.58,
              child: Stack(
                children: [
                  Positioned(
                    left: width * 0.45,
                    top: height * 0.16,
                    child: Image.asset(
                      'assets/images/icons/logo.png',
                      width: width * 0.1,
                    ),
                  ),
                  Positioned(
                    width: 500,
                    top: height * 0.27,
                    height: height * 0.33,
                    child: Image.asset(
                      'assets/images/bmw.png',
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              width: width,
              height: height * 0.42,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Dots(),
                  Text('Controla el seguro de tu coche',
                      style: getregular(24, Colors.black)),
                  Text(
                      'Resuelve los problemas de tu auto, creando un seguro especial para ti.',
                      style: getregular(10, const Color(0xff797A74))),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeInsurance()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      width: width,
                      height: 65,
                      decoration: const BoxDecoration(
                          color: Color(0xff7BB564),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Comenzar',
                            style: getregular(12, Colors.white),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

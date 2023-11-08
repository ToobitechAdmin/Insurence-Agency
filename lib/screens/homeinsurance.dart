import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance_agency/components/appbar.dart';
import 'package:insurance_agency/components/carwidgetview.dart';
import 'package:insurance_agency/components/circularavtar.dart';
import 'package:insurance_agency/components/ofertascard.dart';
import 'package:insurance_agency/components/space.dart';
import 'package:insurance_agency/utils/bottomappbar.dart';
import 'package:insurance_agency/utils/distancemap.dart';
import 'package:insurance_agency/utils/dotsview.dart';
import 'package:insurance_agency/utils/textstyle.dart';

class HomeInsurance extends StatefulWidget {
  const HomeInsurance({super.key});

  @override
  State<HomeInsurance> createState() => _HomeInsuranceState();
}

class _HomeInsuranceState extends State<HomeInsurance> {
  double distance = 55;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Bottombar(),
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, right: 30, bottom: 15),
                child: Appbar(),
              ),
              Text(
                'Bienvenido',
                style: getregular(18, Colors.black),
              ),
              Text(
                '¿Qué necesitas realizar?',
                style: getregular(13, const Color(0xff797A74)),
              ),
              vertical(20),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Circularavtar(
                        img: 'assets/images/icons/services.png',
                        ontap: () {
                          bottombar();
                        },
                        title: 'Servicios'),
                    Circularavtar(
                        img: 'assets/images/icons/seguro.png',
                        ontap: () {
                          bottombar();
                        },
                        title: 'Seguro'),
                    Circularavtar(
                        img: 'assets/images/icons/agenda.png',
                        ontap: () {
                          bottombar();
                        },
                        title: 'Agenda'),
                    Circularavtar(
                      img: 'assets/images/icons/encuesta.png',
                      ontap: () {
                        bottombar();
                      },
                      title: 'Encuesta',
                    ),
                  ],
                ),
              ),
              vertical(5),
              carviewcard('Tus coches', 'Toyota Carolla 2018',
                  'assets/images/toyota.png', context),
              const Dots(),
              vertical(10),
              ofertascard(context),
              vertical(10),
              Center(child: Image.asset('assets/images/icons/minicar.png')),
              vertical(10),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Travelmap(
                  distance: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bottombar() {
    bool switchvalue = false;
    showModalBottomSheet(
        enableDrag: true,
        context: context,
        isScrollControlled: true,
        isDismissible: false,
        useRootNavigator: true,
        barrierColor: Colors.black.withOpacity(0.8),
        backgroundColor: Colors.transparent,
        builder: (context) {
          return StatefulBuilder(
            builder: (BuildContext context, setState) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.92,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    vertical(15),
                    Expanded(
                        child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Color(0xffF8F6F5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          )),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.close)),
                          ),
                          Text(
                            'Control del seguro',
                            style:
                                getregular(12, Theme.of(context).primaryColor),
                          ),
                          vertical(10),
                          Text(
                            'Toyota Carolla 2018',
                            style: getregular(20, Colors.black),
                          ),
                          vertical(10),
                          Text(
                            'Automóvil personal',
                            style: getregular(10, const Color(0xff797A74)),
                          ),
                          vertical(10),
                          Image.asset('assets/images/toyotafront.png'),
                          Text(
                            'Vigencia del seguro',
                            style: getregular(10, Colors.black),
                          ),
                          vertical(10),
                          const LinearProgressIndicator(
                            value: 0.4,
                            backgroundColor: Color(0xff797A74),
                            color: Color(0xff7BB564),
                          ),
                          vertical(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '17/octubre/2020',
                                style: getregular(10, const Color(0xff797A74)),
                              ),
                              Text(
                                '17/octubre/2020',
                                style: getregular(10, const Color(0xff797A74)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Póliza: 0000003332222',
                                  style: getregular(10, Colors.black)),
                              const Spacer(),
                              Text('Recordatorio',
                                  style: getregular(10, Colors.black)),
                              horizental(15),
                              SizedBox(
                                height: 30, //set desired REAL HEIGHT
                                width: 45,
                                child: Transform.scale(
                                  transformHitTests: false,
                                  scale: .5,
                                  child: CupertinoSwitch(
                                      value: switchvalue,
                                      activeColor: const Color(0xff7BB564),
                                      onChanged: ((value) => {
                                            setState(() {
                                              switchvalue = value;
                                            })
                                          })),
                                ),
                              )
                            ],
                          ),
                          vertical(25),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('Reportar siniestro',
                                style: getregular(18, Colors.black)),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              bottomcard('Necesito una Grúa ',
                                  'assets/images/loader.png'),
                              bottomcard('Mecánico Necesito una Grúa ',
                                  'assets/images/setting.png'),
                              bottomcard('Necesito una ambulancia ',
                                  'assets/images/ambulance.png'),
                            ],
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              );
            },
          );
        });
  }
}

Widget bottomcard(String text, String img) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: 90,
    height: 90,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(15)),
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 45,
              height: 45,
              child: Image.asset(img),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward,
              size: 12,
            )
          ],
        ),
        Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: getregular(8, Colors.black),
        )
      ],
    ),
  );
}

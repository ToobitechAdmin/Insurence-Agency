import 'package:flutter/material.dart';
import 'package:insurance_agency/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insurance Agency',
      theme: ThemeData(
          primarySwatch: Colors.blue, primaryColor: const Color(0xff7BB564)),
      home: const Onboarding(),
    );
  }
}

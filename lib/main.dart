import 'package:flutter/material.dart';
import'package:shared_preferences/shared_preferences.dart';
import 'agreementpage.dart';

void main() {
  runApp(const TermSection());
}

class TermSection extends StatelessWidget {
  const TermSection({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: AgreementPage(),

    );
  }
}
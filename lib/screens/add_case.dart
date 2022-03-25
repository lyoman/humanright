import 'package:flutter/material.dart';

import './home.dart';

class CaseRegistration extends StatefulWidget {
  const CaseRegistration({Key? key}) : super(key: key);

  @override
  _CaseRegistrationState createState() => _CaseRegistrationState();
}

class _CaseRegistrationState extends State<CaseRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Case"),
      ), 
      body: const Center(
        child: Text("Add A case Page"), 
      ),
    );
  }
}

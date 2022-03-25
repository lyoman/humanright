import 'package:flutter/material.dart';

class ReportedCases extends StatelessWidget {
  const ReportedCases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reported Cases"),
      ),
      body: const Center(
        child: Text("This is a Reported Cases Page"),
      ),
    );
  }
}

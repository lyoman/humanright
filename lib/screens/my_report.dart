import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Report page"),
      ),
      body: const Center(
        child: Text("This is a My Reports Page"),
      ),
    );
  }
}

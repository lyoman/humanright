import 'package:flutter/material.dart';

import './home.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ), 
      body: const Center(
        child: Text("Setting Page"), 
      ),
    );
  }
}

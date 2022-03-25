import 'package:flutter/material.dart'; 

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator Drawer"),
      ),
      // drawer: DrawerCode(),
      body: const Center(
        child: Text("Profile Page"), 
      ),
    );
  }
}
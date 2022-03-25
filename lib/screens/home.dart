import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:humanrights/utils/constants.dart';
import './profile_page.dart';
import './setting_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Column(
              children: <Widget>[
                Flexible(
                  child:  
                   Center(
                    child: Container(
                      height: 160.0,
                      width: 160.0,
                       child: Center(
                        child: ClipOval(
                          child: Image.asset("assets/logo.jpeg"),
                        ),
                      ),
                    ),
                  ), 
                ),
                const Text(
                  appNameText,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                const Text(
                  appNameText,
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text("Profile"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Profile()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_applications),
            title: const Text("Setting"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Setting()));
              if (kDebugMode) {
                print("Go to Settings");
              }
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_back),
            title: const Text("Logout"),
            onTap: () {
              if (kDebugMode) {
                print("Logout Users");
              }
              Navigator.pop(context);
              SystemNavigator.pop();
            },
          ),
        ],
      ),
    );
  }
}
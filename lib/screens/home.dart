import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:humanrights/screens/add_case.dart';
import 'package:humanrights/screens/setting_page.dart';
import 'package:humanrights/utils/constants.dart';
import './reported_cases.dart';
import './my_report.dart';

import '../widgets/navigation_header.dart';
import '../widgets/navigation_item.dart';

 
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appNameText),
      ),
      drawer:Drawer(
            child: ListView(
                    children: const [
                    NavHeader(),
                    Divider(),
                    NavItem(title: "Reported",icon: Icons.list_alt_outlined,widget: ReportedCases(),), 
                    NavItem(title: "Add a Case",icon: Icons.save_alt_outlined,widget: CaseRegistration(),),
                    NavItem(title: "Report Cases",icon: Icons.filter_frames_rounded,widget: Report(),),
                    // NavItem(title: "Rate us",icon: Icons.star_rate,),
                    // NavItem(title: "Support",icon: Icons.support_agent_outlined,),
                    NavItem(title: "Settings",icon: Icons.settings,widget: Setting(),),
                    // NavItem(title: "Log out",icon: Icons.logout,),
                    ],
            ),
       ),
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),

          ) ,
          BottomNavigationBarItem(
            label: "Categories",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: "Reports",
            icon: Icon(Icons.filter_frames_rounded),
          ),
        ],
      ),
    );
  }
}
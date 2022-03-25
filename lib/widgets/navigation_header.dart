import 'package:flutter/material.dart';
import 'package:humanrights/utils/constants.dart';

class NavHeader extends StatelessWidget {
  const NavHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 160.0,
              width: 160.0,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(19),
              child: Center(
                child: ClipOval(
                  child: Image.asset("assets/logo.jpeg"),
                ),
              ),
            ),
          ),
          const Text(appNameText),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layouts/app_bar_layout.dart';
import 'package:flutter_application_1/Layouts/drawer_layout.dart';

class Tablet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Tablet();
  }
}

class _Tablet extends State<Tablet> {
  bool tabMode = true;
  bool _enabled = false;

  Menuenabled() {
    return Drawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarLayout(
        tabletMode: tabMode,
        enabled: _enabled,
        onMenuPressed: () {},
      ),
      drawer: DrawerLayout(
        enabled: tabMode,
      ),
      body: Row(
        children: [
          DrawerLayout(
            enabled: _enabled,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 30,
                  color: const Color(0xFF1C1A1A),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

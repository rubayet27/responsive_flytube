import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layouts/app_bar_layout.dart';
import 'package:flutter_application_1/Layouts/drawer_layout.dart';
import 'package:flutter_application_1/Layouts/suggetionBox.dart';

class Desktop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Desktop();
  }
}

class _Desktop extends State<Desktop> {
  bool isfocused = false;
  bool _enabled = true;

  final scrollcon = ScrollController();
  void enabled() {
    setState(() {
      _enabled = !_enabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161515),
      appBar: AppBarLayout(
        onValueChanged: (Focused) {
          setState(() {
            isfocused = Focused;
          });
        },
        enabled: _enabled,
        onMenuPressed: () {
          enabled();
        },
      ),
      body: Stack(
        children: [
          Row(
            children: [
              DrawerLayout(enabled: _enabled),
              //Main Body Part Start
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      color: const Color(0xFF1C1A1A),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SuggetionBox(
            isFocused: isfocused,
          ),
        ],
      ),
    );
  }
}

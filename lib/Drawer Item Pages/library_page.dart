import 'package:flutter/material.dart';
import 'package:flutter_application_1/Layouts/app_bar_layout.dart';
import 'package:flutter_application_1/Layouts/drawer_layout.dart';
import 'package:flutter_application_1/Layouts/suggetionBox.dart';

class LibraryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LibraryPage();
  }
}

class _LibraryPage extends State<LibraryPage> {
  bool isfocused = false;
  bool tabletmode = true;
  final bool _enabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerLayout(enabled: tabletmode),
      appBar: AppBarLayout(
        enabled: _enabled,
        onValueChanged: (Focused) {
          setState(() {
            isfocused = Focused;
          });
        },
        tabletMode: tabletmode,
      ),
      body: Stack(
        children: [
          Row(
            children: [
              DrawerLayout(enabled: _enabled),
              const Expanded(child: Column()),
            ],
          ),
          SuggetionBox(isFocused: isfocused),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LayoutManager extends StatelessWidget {
  late final phone;
  late final tablet;
  late final desktop;

  LayoutManager({this.phone, this.tablet, this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
      if (constraints.maxWidth < 650) {
        return phone;
      } else if (constraints.maxWidth < 800) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}

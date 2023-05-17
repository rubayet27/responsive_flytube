import 'package:flutter/material.dart';

class SuggetionBox extends StatefulWidget {
  late bool isFocused;
  SuggetionBox({required this.isFocused});
  @override
  State<StatefulWidget> createState() {
    return _SuggetionBox();
  }
}

class _SuggetionBox extends State<SuggetionBox> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.topCenter,
      child: Visibility(
        visible: widget.isFocused,
        child: Container(
          width: wid > 1000
              ? wid * 0.5
              : wid > 800
                  ? wid * 0.4
                  : wid > 530
                      ? wid * 0.4
                      : wid * 0.2,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Colors.white, 
          ),
        ),
      ),
    );
  }
}

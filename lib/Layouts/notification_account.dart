import 'package:flutter/material.dart';

class NotificationCenter extends StatelessWidget {
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.red,
      alignment: Alignment.topRight,
      content: Container(
        width: 400,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black87,
        ),
      ),
    );
  }
}

class AccountCenter extends StatelessWidget {
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.red,
      alignment: Alignment.topRight,
      content: Container(
        width: 250,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black87,
        ),
      ),
    );
  }
}

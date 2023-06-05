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
        width: 350,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black87,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 170,
              width: 170,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.account_circle,
                size: 170,
                color: Colors.black,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "rubayet27",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
            const ListTile(
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.settings),
            ),
            const ListTile(
              title: Text(
                "Log out",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}

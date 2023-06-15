import 'package:flutter/material.dart';

class NotificationCenter extends StatelessWidget {
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      alignment: Alignment.topRight,
      content: Container(
        width: 400,
        height: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black87,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              alignment: Alignment.topLeft,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const Text(
                "Notifications",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Divider(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                padding: const EdgeInsets.only(bottom: 14),
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("$index"),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountCenter extends StatelessWidget {
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      alignment: Alignment.topRight,
      content: Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black87,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.account_circle,
                size: 120,
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
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ],
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 17),
              ),
              leading: const Icon(Icons.settings),
            ),
            ListTile(
              onTap: () {},
              title: const Text(
                "Log out",
                style: TextStyle(fontSize: 17),
              ),
              leading: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
    );
  }
}

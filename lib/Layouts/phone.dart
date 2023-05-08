import 'package:flutter/material.dart';

class Phone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Phone();
  }
}

class _Phone extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title:const Text("Phone Mode"),
        leading: Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Builder(builder: (context) {
                      return IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: Icon(Icons.menu),
                        splashRadius: 20,
                      );
                    }),
                  ),
                ),
                const Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "FlyTube",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _ContentPage();
  }
}

class _ContentPage extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        child: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: wid < 900
                ? 1
                : wid < 1100
                    ? 2
                    : 3,
            childAspectRatio: wid < 900 ? 200 / 100 : 200 / 200,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 200,
                width: 200,
                child: Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text("Container no. $index"),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
          padding: const EdgeInsets.only(top: 20, bottom: 20),
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
            color: Colors.white,
          ),
          child: ListView.builder(
              itemCount: 12,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: const Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Suggetion $index",
                        style: const TextStyle(color: Colors.black),
                      ),
                      trailing: const Text(
                        "Remove",
                        style: TextStyle(color: Color(0xff0011F5)),
                      ),
                    ));
              }),
        ),
      ),
    );
  }
}

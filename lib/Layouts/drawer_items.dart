import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerItem extends StatelessWidget {
  late IconData icondata;
  late var navigatePage;
  late String? title;

  DrawerItem({
    required this.icondata,
    this.title,
    this.navigatePage,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /*
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return navigatePage;
        },
        settings: RouteSettings(name: navigatePage?.)
        )
        );*/
      },
      child: ListTile(
        leading: Icon(
          icondata,
          size: icondata == Icons.home ? 22 : 18,
        ),
        title: Text(
          title ?? "",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ),
    );
  }
}

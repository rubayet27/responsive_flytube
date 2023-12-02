import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerItem extends StatelessWidget {
  late IconData icondata;
  late var navigatePage;
  late String? title;
  late bool enabled;

  DrawerItem({
    required this.enabled,
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
        settings: RouteSettings(name: navigatePage.toString())
        )
        );*/
      },
      child: SizedBox(
        height: 48,
        child: Row(
          mainAxisAlignment:
              enabled ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Padding(
              padding: enabled
                  ? const EdgeInsets.only(left: 20)
                  : EdgeInsets.zero,
              child: Icon(
                icondata,
                size: icondata == Icons.home ? 22 : 18,
              ),
            ),
            Padding(
              padding: enabled
                  ? const EdgeInsets.only(left: 20)
                  : EdgeInsets.zero,
              child: Text(
                title ?? "",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

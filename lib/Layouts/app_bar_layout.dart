import 'package:flutter/material.dart';

class AppBarLayout extends StatelessWidget implements PreferredSizeWidget {
  late bool enabled;
  late bool tabletMode;
  late final VoidCallback?
      onMenuPressed; //the enabled function to open the drawer inside body

  AppBarLayout(
      {required this.enabled, this.onMenuPressed, this.tabletMode = false});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return AppBar(
      elevation: 0.1,
      backgroundColor: const Color(0xFF242323),
      leadingWidth: 300,
      leading: Row(
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Builder(builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  splashRadius: 20,
                  onPressed: tabletMode
                      ? () {
                          Scaffold.of(context)
                              .openDrawer(); // this is special for Tablet Layout
                        }
                      : onMenuPressed,
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
      //Leading part done

      centerTitle: true,
      title: Container(
        height: 36,
        width: wid > 1000
            ? wid * 0.5
            : wid > 850
                ? wid * 0.4
                : wid > 530
                    ? wid * 0.3
                    : wid * 0.2,
        child: Row(
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff242424),
                  border: Border.all(
                    color: const Color(0xff484848),
                  ),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                child: const TextField(
                  //textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 13),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: 70,
              decoration: const BoxDecoration(
                color: Color(0xff484848),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: const Center(
                child: Icon(
                  Icons.search,
                  size: 27,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xff484848), shape: BoxShape.circle),
                width: 40,
                child: const Center(
                  child: Icon(
                    Icons.mic,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.notifications_none_outlined,
            size: 27,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.account_circle,
            size: 27,
          ),
        ),
      ],
    );
  }
}

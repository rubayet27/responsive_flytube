import 'package:flutter/material.dart';

import 'drawer_items.dart';
import 'home.dart';

class DrawerLayout extends StatelessWidget {
  late bool enabled;
  DrawerLayout({required this.enabled});
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    return Drawer(
      width: enabled ? 250 : 60,
      child: Scrollbar(
          //controller: scrollcon,
          child: ListView(
        //controller: scrollcon,
        children: [
          enabled
              ? DrawerItem(
                  icondata: Icons.home,
                  title: "Home",
                  navigatePage: HomePage(),
                )
              : DrawerItem(navigatePage: HomePage(), icondata: Icons.home),
          enabled
              ? DrawerItem(
                  icondata: Icons.video_library,
                  title: "Library",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons.video_library,
                  navigatePage: () {},
                ),
          enabled
              ? DrawerItem(
                  icondata: Icons.history,
                  title: "History",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons.history,
                  navigatePage: () {},
                ),
          enabled
              ? DrawerItem(
                  icondata: Icons.subscriptions,
                  title: "Subscriptions",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons.subscriptions,
                  navigatePage: () {},
                ),
          enabled
              ? DrawerItem(
                  icondata: Icons.watch_later,
                  title: "Watch Later",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons.watch_later,
                  navigatePage: () {},
                ),
          enabled
              ? DrawerItem(
                  icondata: Icons.monitor,
                  title: "Your Videos",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons
                      .monitor, // Or Use blank Container at here to hide them when Drawer Closed
                  navigatePage: () {},
                ),
          enabled
              ? DrawerItem(
                  icondata: Icons.thumb_up_sharp,
                  title: "Liked Videos",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons
                      .thumb_up_sharp, // Or Use blank Container at here to hide them when Drawer Closed
                  navigatePage: () {},
                ),
          enabled
              ? DrawerItem(
                  icondata: Icons.settings,
                  title: "Settings",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons
                      .settings, // Or Use blank Container at here to hide them when Drawer Closed
                  navigatePage: () {},
                ),
          const Divider(),
          enabled
              ? DrawerItem(
                  icondata: Icons.keyboard_arrow_down,
                  title: "Show More",
                  navigatePage: () {},
                )
              : DrawerItem(
                  icondata: Icons
                      .keyboard_arrow_down, // Or Use blank Container at here to hide them when Drawer Closed
                  navigatePage: () {},
                ),
        ],
      )),
    );
  }
}

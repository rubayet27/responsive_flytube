import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drawer%20Item%20Pages/library_page.dart';

import 'drawer_items.dart';
import 'home.dart';

class DrawerLayout extends StatefulWidget {
  final bool enabled;
  const DrawerLayout({required this.enabled});
  @override
  State<StatefulWidget> createState() {
    return _DrawerLayout();
  }
}

// ignore: must_be_immutable
class _DrawerLayout extends State<DrawerLayout> {
  bool _isexpanded = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      width: widget.enabled ? 250 : 60,
      child: Scrollbar(
          //controller: scrollcon,
          child: ListView(
        //controller: scrollcon,
        children: [
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.home,
                  title: "Home",
                  navigatePage:
                      HomePage(), // Use the MyApp() to call the home page with responsiveness
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  navigatePage: HomePage(),
                  icondata: Icons.home),
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.video_library,
                  title: "Library",
                  navigatePage: (){}
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.video_library,
                  navigatePage:(){}
                ),
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.history,
                  title: "History",
                  navigatePage: () {},
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.history,
                  navigatePage: () {},
                ),
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.subscriptions,
                  title: "Subscriptions",
                  navigatePage: () {},
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.subscriptions,
                  navigatePage: () {},
                ),
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.watch_later,
                  title: "Watch Later",
                  navigatePage: () {},
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.watch_later,
                  navigatePage: () {},
                ),
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.monitor,
                  title: "Your Videos",
                  navigatePage: () {},
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons
                      .monitor, // Or Use blank Container at here to hide them when Drawer Closed
                  navigatePage: () {},
                ),
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.thumb_up_sharp,
                  title: "Liked Videos",
                  navigatePage: () {},
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons
                      .thumb_up_sharp, // Or Use blank Container at here to hide them when Drawer Closed
                  navigatePage: () {},
                ),
          widget.enabled
              ? DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons.settings,
                  title: "Settings",
                  navigatePage: () {},
                )
              : DrawerItem(
                  enabled: widget.enabled,
                  icondata: Icons
                      .settings, // Or Use blank Container at here to hide them when Drawer Closed
                  navigatePage: () {},
                ),
          const Divider(),
          widget.enabled
              ? ExpansionTile(
                  //ExpansionTile widget to expand the Show More button to show saved
                  title: Text(
                    _isexpanded ? "Show Less" : "Show More",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  onExpansionChanged: (expand) {
                    setState(() {
                      _isexpanded = expand;
                    });
                  },
                  children: const [], //listview.builder to show the playlist that have saved
                )
              : const Text("")
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/drawer_item.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);
  final DrawerItem currentItem;
  final ValueChanged<DrawerItem> onSelectedItem;

  @override
  Widget build(BuildContext context) {
    Widget buildListTile(DrawerItem item) {
      return ListTile(
        selected: currentItem == item,
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () {
          onSelectedItem(item);
        },
      );
    }

    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Spacer(),
                const CircleAvatar(
                  radius: 65,
                  backgroundImage: NetworkImage(
                      'https://imageio.forbes.com/specials-images/imageserve/6031e310d4a4c4b5ccb17871/Natural-beauty-portrait-of-young-woman/960x0.jpg?format=jpg&width=960'),
                ),
                const SizedBox(height: 20),
                ...DrawerItems.drawerItems
                    .map((item) => buildListTile(item))
                    .toList()
              ],
            ),
          ),
        ));
  }
}

class DrawerItems {
  static final List<DrawerItem> drawerItems = <DrawerItem>[
    DrawerItem(title: 'Home', icon: Icons.home),
    DrawerItem(title: 'Profile', icon: Icons.person),
    DrawerItem(title: 'Settings', icon: Icons.settings),
    DrawerItem(title: 'Support', icon: Icons.support_agent),
    DrawerItem(title: 'About', icon: Icons.info_outline),
    DrawerItem(title: 'Rate us', icon: Icons.star_border),
  ];
}

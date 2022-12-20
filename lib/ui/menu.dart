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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        selected: currentItem == item,
        selectedColor: Colors.white,
        selectedTileColor: Colors.grey.withOpacity(0.3),
        minLeadingWidth: 20,
        leading: Icon(item.icon, color: Colors.white),
        title: Text(
          item.title,
          style: const TextStyle(color: Colors.white),
        ),
        onTap: () {
          onSelectedItem(item);
        },
      );
    }

    return Scaffold(
        backgroundColor: Colors.teal,
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: const FloatingActionButton.extended(
          onPressed: null,
          label: Text('Logout'),
          icon: Icon(Icons.logout),
        ),
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
                const Padding(
                  padding: EdgeInsets.only(left: 18.0),
                  child: Text(
                    'Martha Enochs',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
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
    DrawerItem(
      title: 'Home',
      icon: Icons.home,
      index: 0,
    ),
    DrawerItem(
      title: 'Profile',
      icon: Icons.person,
      index: 1,
    ),
    DrawerItem(
      title: 'Settings',
      icon: Icons.settings,
      index: 2,
    ),
    DrawerItem(
      title: 'Support',
      icon: Icons.support_agent,
      index: 3,
    ),
    DrawerItem(
      title: 'About',
      icon: Icons.info_outline,
      index: 4,
    ),
    DrawerItem(
      title: 'Rate us',
      icon: Icons.star_border,
      index: 5,
    ),
  ];
}

import 'package:flutter/material.dart';
import 'package:jedzonko/theme/config.dart';

import 'changeThemeDialog.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.history,
                color: Theme.of(context).primaryColor.withOpacity(0.7),
              ),
              title: Text('Historia wyszukiwania'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/history');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.color_lens_outlined,
                color: Theme.of(context).primaryColor.withOpacity(0.7),
              ),
              title: Text('Zmień motyw'),
              onTap: () {
                showDialog<void>(
                    context: context,
                    builder: (context) => ChangeThemeDialog());
                //currentTheme.toggleTheme();
                //Navigator.pop(context);
              },
            ),
          ]),
    ));
  }
}

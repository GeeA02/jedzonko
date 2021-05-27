import 'package:flutter/material.dart';

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
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Menu',
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
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
                context: context, builder: (context) => ChangeThemeDialog());
          },
        ),
      ]),
    ));
  }
}

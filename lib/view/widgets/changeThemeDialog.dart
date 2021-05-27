import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jedzonko/theme/config.dart';

class ChangeThemeDialog extends StatelessWidget {
  ChangeThemeDialog();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Zmień motyw'),
      content: Form(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile(
            title: Text('Jasny motyw'),
            value: ThemeMode.light,
            groupValue: currentTheme.currentTheme,
            onChanged: (value) {
              if (value != currentTheme.currentTheme)
                currentTheme.toggleTheme();
            },
            activeColor: Theme.of(context).primaryColor,
          ),
          RadioListTile(
            title: Text('Ciemny motyw'),
            value: ThemeMode.dark,
            groupValue: currentTheme.currentTheme,
            onChanged: (value) {
              if (value != currentTheme.currentTheme)
                currentTheme.toggleTheme();
            },
            activeColor: Theme.of(context).primaryColor,
          ),
        ],
      )),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('ZAMKNIJ'),
          style: TextButton.styleFrom(primary: Theme.of(context).primaryColor),
        ),
      ],
    );
  }
}

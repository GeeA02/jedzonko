import 'package:flutter/material.dart';
import 'package:jedzonko/view/historyWidget.dart';
import 'package:jedzonko/view/mainMenu.dart';
import 'package:jedzonko/theme/defaultTheme.dart';
import 'package:jedzonko/view/productWidget.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  static const String _title = 'Jedzonko';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: defaultTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenuWidget(),
        '/history': (context) => HistoryWidget(),
        ProductWidget.routeName: (context) => ProductWidget(),
      },
    );
  }
}

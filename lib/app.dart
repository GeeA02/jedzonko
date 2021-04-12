import 'package:flutter/material.dart';
import 'package:jedzonko/view/historyView.dart';
import 'package:jedzonko/view/mainView.dart';
import 'package:jedzonko/theme/defaultTheme.dart';
import 'package:jedzonko/view/productView.dart';

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
        '/': (context) => MainView(),
        '/history': (context) => HistoryView(),
        ProductView.routeName: (context) => ProductView(),
      },
    );
  }
}

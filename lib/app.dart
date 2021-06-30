import 'package:flutter/material.dart';
import 'package:jedzonko/theme/config.dart';
import 'package:jedzonko/view/historyView.dart';
import 'package:jedzonko/view/mainView.dart';
import 'package:jedzonko/theme/defaultTheme.dart';
import 'package:jedzonko/view/productView.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  static const String _title = 'Jedzonko';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: DefaultTheme.lightTheme,
      darkTheme: DefaultTheme.darkTheme,
      themeMode: currentTheme.currentTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => MainView(),
        '/history': (context) => HistoryView(),
        ProductView.routeName: (context) => ProductView(),
      },
    );
  }
}

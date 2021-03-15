import 'package:flutter/material.dart';
import 'package:jedzonko/view/calculatorWidget.dart';
import 'package:jedzonko/view/cameraWidget.dart';
import 'package:jedzonko/view/historyWidget.dart';

/// This is the stateful widget that the main application instantiates.
class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({Key key}) : super(key: key);

  @override
  _MainMenuWidgetState createState() => _MainMenuWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainMenuWidgetState extends State<MainMenuWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = [
    CameraWidget(),
    CalculatorWidget(),
    HistoryWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jedzonko'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Strona główna',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Kalkulator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Szukaj',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jedzonko/view/calculatorWidget.dart';
import 'package:jedzonko/view/cameraWidget.dart';
import 'package:jedzonko/view/homeWidget.dart';

/// This is the stateful widget that the main application instantiates.
class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({Key key}) : super(key: key);

  @override
  _MainMenuWidgetState createState() => _MainMenuWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainMenuWidgetState extends State<MainMenuWidget> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    HomeWidget(),
    CameraWidget(),
    CalculatorWidget(),
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
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Theme.of(context).primaryColorLight.withOpacity(0.3)),
        elevation: 0.0,
      ),
      //leftside menu
      drawer: Drawer(
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
              title: Text('Historia wyszukiwania'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/history');
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ])),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          _onItemTapped(1);
        },
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.photo_camera_rounded),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Theme.of(context).bottomAppBarColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                //update the bottom app bar view each time an item is clicked
                onPressed: () {
                  _onItemTapped(0);
                },
                iconSize: 30.0,
                icon: Icon(
                  Icons.home,
                  //darken the icon if it is selected or else give it a different color
                  color: _selectedIndex == 0
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).secondaryHeaderColor,
                ),
              ),
              //to leave space in between the bottom app bar items and below the FAB
              SizedBox(
                width: 100.0,
              ),
              IconButton(
                onPressed: () {
                  _onItemTapped(2);
                },
                iconSize: 30.0,
                icon: Icon(
                  Icons.calculate,
                  color: _selectedIndex == 2
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).secondaryHeaderColor,
                ),
              ),
            ],
          ),
        ),
        //to add a space between the FAB and BottomAppBar
        shape: CircularNotchedRectangle(),
        //color of the BottomAppBar
        color: Colors.white,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jedzonko/theme/colors.dart';
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

  static List<Widget> _widgetOptions = [
    CalculatorWidget(),
    CameraWidget(),
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
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: CustomColors.PrimaryLightColor),
        elevation: 0.0,
      ),
      drawer: Drawer(
          child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: CustomColors.PrimaryColor,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
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
        backgroundColor: CustomColors.PrimaryColor,
        onPressed: () {
          _onItemTapped(1);
        },
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: CustomColors.LightBackgroundColor,
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
                      ? CustomColors.PrimaryColor
                      : CustomColors.SecondaryColor,
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
                  Icons.call_received,
                  color: _selectedIndex == 2
                      ? CustomColors.PrimaryColor
                      : CustomColors.SecondaryColor,
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

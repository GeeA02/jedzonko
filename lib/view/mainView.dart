import 'package:flutter/material.dart';
import 'package:jedzonko/view/calculatorView.dart';
import 'package:jedzonko/view/cameraView.dart';
import 'package:jedzonko/view/homeView.dart';
import 'package:jedzonko/view/widgets/sideMenu.dart';

/// This is the stateful widget that the main application instantiates.
class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    HomeView(),
    CameraView(),
    CalculatorView(),
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
            color: Theme.of(context).primaryColor.withOpacity(0.6)),
        elevation: 0.0,
      ),
      //leftside menu
      drawer: SideMenu(),
      body: Container(
        color: Theme.of(context).backgroundColor,
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

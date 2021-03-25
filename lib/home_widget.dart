import 'package:flutter/material.dart';
import 'package:flutter_appkl/theme_changer.dart';
import 'placeholder_widget.dart';
import 'dashboard.dart';
import 'collect.dart';
import 'customer.dart';
import 'invoice.dart';
import 'more.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();

  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  String _title='Dashboard';
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  final List<Widget> _children = [ Dashboard(),
   Invoice(),
   Collect(),
  Customer(),More()];
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(_title),
      actions: <Widget>[
        Switch(
          onChanged: toggleSwitch,
          value: isSwitched,
          activeColor: Colors.blue,
          activeTrackColor: Colors.white,
          inactiveThumbColor: Colors.blue,
          inactiveTrackColor: Colors.black,
        )
      ],
    ),
    body: _children[_currentIndex], // new

    bottomNavigationBar: Container(
    decoration: BoxDecoration(
    boxShadow: <BoxShadow>[
    BoxShadow(
    color: Colors.black,
    blurRadius: 10,
  ),
  ],
  ),
  child: BottomNavigationBar(
  elevation: 10,
      onTap: onTabTapped, // new
      currentIndex: _currentIndex, // new
     // backgroundColor: Colors.white, //fromARGB(255, 6, 33, 55)
      selectedItemColor: Color.fromARGB(255, 47, 200, 233),
      unselectedItemColor: Color.fromARGB(255, 36, 94, 136),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Dashboard'),

        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.line_style),
          title: new Text('Invoices'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.link),
            title: Text('Collect')
        ), BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Customers')
        ), BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('More')
        )
      ],
    ),
  ),
  );
}
  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        ThemeBuilder.of(context).changeTheme();
       // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        ThemeBuilder.of(context).changeTheme();
       // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch(index) {
        case 0: { _title = 'Dashboard'; }
        break;
        case 1: { _title = 'Invoices'; }
        break;
        case 2: { _title = 'Collect'; }
        break;
        case 3: { _title = 'Customers'; }
        break;
        case 4: { _title = 'More'; }
        break;
      }
    });
  }
}

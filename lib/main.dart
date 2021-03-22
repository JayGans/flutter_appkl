import 'package:flutter/material.dart';

import 'home_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'My Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Color.fromARGB(255, 6, 33, 55)),
    home: Home(),
  );
}
}






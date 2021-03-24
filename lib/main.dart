import 'package:flutter/material.dart';
import 'package:flutter_appkl/theme_changer.dart';

import 'home_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      defaultBrightness: Brightness.light,
      builder: (context, _brightness) {
        return MaterialApp(
          title: 'My Flutter App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              brightness: _brightness),
          home: Home(),
        );
      },
    );
  }
}






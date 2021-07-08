import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter/material.dart';

import 'ui/home_screen.dart';

void main() => runApp(Portfolio());

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sthefano Schiavon Portfolio',
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(),
      home: HomeScreen(),
      builder: (context, widget) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'images/scaffold.jpg',
          ),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
        )),
        child: ResponsiveWrapper.builder(
          widget,
          defaultScale: true,
          maxWidth: 640,
          minWidth: 600,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:klinfeet/Home.dart';
import 'klinfeet_theme.dart';


void main() {
  runApp(const KlinFeet());
}

class KlinFeet extends StatelessWidget {
  const KlinFeet({super.key});

  @override
  Widget build(BuildContext context) {
 final theme = KlinFeetTheme.light();
    return  MaterialApp(
      theme: theme,
      title: 'KlinFeet' ,
      home: const Home(),
    );
  }
}

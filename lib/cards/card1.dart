import 'package:flutter/material.dart';
import 'package:klinfeet/klinfeet_theme.dart';


class Card1 extends StatelessWidget {

  final String title = 'Nike';
  final String name = 'AirForce 1';
  final String designer = 'By: Bruce Kilgore';
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
          height: 550,
          width: 350,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/af1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12.0))
        ),
        child: Stack(
          children: [
            Text(
              title,
              style: KlinFeetTheme.darkTextTheme.displayLarge,
            ),
            Positioned(
              top:  70,
              child: Text(
                name,
                style: KlinFeetTheme.darkTextTheme.displayMedium,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                designer,
                style: KlinFeetTheme.darkTextTheme.bodyLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}

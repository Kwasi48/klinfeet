import 'package:flutter/material.dart';
import 'package:klinfeet/klinfeet_theme.dart';
import 'author_card.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(height: 550, width: 340),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/train.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Expanded(
          child: Column(
            children: [
              const AuthorCard(
                  designerName: 'Tinker Linn ',
                  title: 'VP Design',
                  imageProvider: AssetImage('assets/img.png'))
            ],
          ),
        ),
      ),
    );
  }
}

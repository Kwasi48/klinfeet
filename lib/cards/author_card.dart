import 'package:flutter/material.dart';
import 'package:klinfeet/klinfeet_theme.dart';
import 'package:klinfeet/cards/circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String designerName;
  final String title;
  final ImageProvider? imageProvider;
  const AuthorCard(
      {super.key,
      required this.designerName,
      required this.title,
      this.imageProvider});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        //TODO: add alignment
        children: [
          Row(
            children: [
              CircleImage(
                imageProvider: imageProvider,
                imageRadius: 28,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    designerName,
                    style: KlinFeetTheme.darkTextTheme.displayMedium,
                  ),
                  Text(
                    title,
                    style: KlinFeetTheme.darkTextTheme.displaySmall,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

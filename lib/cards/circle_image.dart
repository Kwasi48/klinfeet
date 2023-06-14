import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({super.key,
    this.imageProvider,
    this.imageRadius = 20,});

  final ImageProvider? imageProvider;
  final double imageRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        radius: imageRadius -6,
        backgroundImage: imageProvider,
      ),
    );
  }
}

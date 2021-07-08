import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double diameter;

  Avatar({required this.diameter});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: diameter,
      width: diameter,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 4,
          color: Theme.of(context).secondaryHeaderColor,
        ),
        image: DecorationImage(
          image: AssetImage(
            'images/profile.jpg',
          ),
        ),
      ),
    );
  }
}

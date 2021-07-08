import 'package:flutter/material.dart';

import 'profile_card/profile_info.dart';
import 'profile_card/avatar.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({required this.width}) : height = width * _heightRatio;
  static const _heightRatio = 1 / 1.61803398875 / 2;
  static const double spaceBetween = 16;
  static const double padding = 8;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final avatarDiameter = width / 4;
    final profileInfoWidth =
        width - avatarDiameter - spaceBetween - 2 * padding;

    return SizedBox(
      height: height,
      child: Padding(
        padding: const EdgeInsets.all(padding),
        child: Row(
          //mainAxisSize: MainAxisSize.min,
          children: [
            Avatar(diameter: avatarDiameter),
            SizedBox(width: spaceBetween),
            SizedBox(
              width: profileInfoWidth,
              child: ProfileInfo(),
            ),
          ],
        ),
      ),
    );
  }
}

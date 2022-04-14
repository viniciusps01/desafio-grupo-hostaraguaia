import 'package:flutter/material.dart';

class PokemonCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final Color borderColor;
  final Color? backgroundColor;
  final double circleAvatarSize;

  const PokemonCircleAvatar({
    Key? key,
    required this.imageUrl,
    this.borderColor = Colors.white,
    this.circleAvatarSize = 26,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: circleAvatarSize,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}

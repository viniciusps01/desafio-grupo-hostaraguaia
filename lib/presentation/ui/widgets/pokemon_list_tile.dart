import 'package:flutter/material.dart';

import 'pokemon_circle_avatar.dart';

class PokemonListTile extends StatelessWidget {
  final Function()? onTap;
  final bool shouldHaveShadow;
  final Color circleAvatarBorderColor;
  final Color circleAvatarBackgroundColor;
  final double circleAvatarSize;
  final String imageUrl;
  final Color backgroundColor;
  final String title;
  final Color titleColor;
  final String subtitle;
  final Color subtitleColor;
  final Widget? trailing;

  const PokemonListTile({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.shouldHaveShadow = true,
    this.circleAvatarSize = 26,
    this.titleColor = Colors.white,
    this.subtitleColor = Colors.white,
    this.backgroundColor = Colors.white,
    this.circleAvatarBorderColor = Colors.white,
    this.circleAvatarBackgroundColor = Colors.white,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: !shouldHaveShadow
            ? null
            : [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(1, 1),
                  blurRadius: 2,
                  spreadRadius: 3,
                )
              ],
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: titleColor,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: subtitleColor,
          ),
        ),
        leading: PokemonCircleAvatar(
          circleAvatarSize: circleAvatarSize,
          imageUrl: imageUrl,
          borderColor: circleAvatarBorderColor,
          backgroundColor: circleAvatarBackgroundColor,
        ),
        trailing: trailing,
      ),
    );
  }
}

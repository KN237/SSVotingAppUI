import 'package:flutter/material.dart';
import 'package:secret_story/config/utils.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Bienvenue ',
          style:
              TextStyle(fontFamily: 'sans-serif', fontWeight: FontWeight.w300),
        ),
        Text(
          'Will ',
          style:
              TextStyle(fontFamily: 'sans-serif', fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

class AppBarHeroLogo extends StatelessWidget {
  const AppBarHeroLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Image.asset(
        'assets/images/logo.png',
        width: 50,
      ),
    );
  }
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({
    super.key,
    required this.myKey,
  });

  final GlobalKey<ScaffoldState> myKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        myKey.currentState!.openDrawer();
      },
      child: const Icon(
        Icons.sort,
        size: 40,
        color: rougeBordeau,
      ),
    );
  }
}

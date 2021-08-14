import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(
      this.title, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterItem extends StatelessWidget {
  final String title;
  const FooterItem(
      this.title, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}

class FooterItemMobile extends StatelessWidget {
  final String title;
  const FooterItemMobile(
      this.title, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: GoogleFonts.openSans(fontSize: 13, fontWeight: FontWeight.w500 , color: Colors.black),
        softWrap: true,
        overflow: TextOverflow.ellipsis,

      ),
    );
  }
}
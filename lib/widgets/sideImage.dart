import 'package:flutter/material.dart';

class SideImage extends StatelessWidget {
  final String title;
  const SideImage(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
      child: Image.asset(
        title,
          height: MediaQuery.of(context).size.height *0.5,
          width: MediaQuery.of(context).size.width *0.5
        ,
        ),
      );


  }
}
class SideImageMobile extends StatelessWidget {
  final String title;
  const SideImageMobile(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Image.asset(
        title,
        height: MediaQuery.of(context).size.height *0.5,
        width: MediaQuery.of(context).size.width *0.5
        ,
      ),
    );


  }
}


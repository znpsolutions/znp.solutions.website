import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:znpsolutionswebpage/widgets/navbar/navbarItems.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height:  100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            SvgPicture.asset("images/logo.znp.solutions.svg", height: 20  ,width: 20,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarItem("Services"),
              SizedBox(width: 20,),
              NavBarItem("Technologies"),
              SizedBox(width: 20,),
              NavBarItem("Work"),
              SizedBox(width: 20,),
              NavBarItem("Blog"),
            ],
          )
        ],
      ),
    );
  }

}

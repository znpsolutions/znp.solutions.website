import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:znpsolutionswebpage/widgets/centeredWidgets.dart';
import 'package:znpsolutionswebpage/widgets/footer/footerBar.dart';
import 'package:znpsolutionswebpage/widgets/navbar/navbarItems.dart';
import 'package:znpsolutionswebpage/widgets/pageElements.dart';


class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: true,
      endDrawer: Drawer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                ListTile(title: NavBarItem("Services"),),
                ListTile(title: NavBarItem("Technologies"),),
                ListTile(title: NavBarItem("Work"),),
                ListTile(title: NavBarItem("Blog"),),
              ],
            ),
          ),
        ),
      ),
     appBar: AppBar(
       iconTheme: IconThemeData.fallback().copyWith(color: Colors.black),
       backgroundColor: Colors.white,
       elevation: 0.0,
       leadingWidth: 0.0,
       title:  SvgPicture.asset("assets/images/logo.znp.solutions.svg",  fit: BoxFit.fill


       )
     ),
      backgroundColor: Colors.white,
      body: CenteredViewMobile(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child:Image.asset(
                      "rocket.gif",
                      height: MediaQuery.of(context).size.height *0.4,
                      width: MediaQuery.of(context).size.width *0.4
                      ,
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(13,13,13,6),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: ZnpDetailsMobile()),
                    )),
              ],
            ),
          ),

          FooterBarMobile()

        ],
      ),
        ),
    );
    
  }
}

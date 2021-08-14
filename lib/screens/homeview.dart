import 'package:flutter/material.dart';
import 'package:znpsolutionswebpage/widgets/centeredWidgets.dart';
import 'package:znpsolutionswebpage/widgets/footer/footerBar.dart';
import 'package:znpsolutionswebpage/widgets/navbar/navbar.dart';
import 'package:znpsolutionswebpage/widgets/pageElements.dart';
import 'package:znpsolutionswebpage/widgets/sideImage.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            NavBar(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: ZnpDetails())),
                  Expanded(
                    child: Center(
                      child: SideImage("images/48945-launch.gif"),
                    ),
                  )
                ],
              ),
            ),
            FooterBar()
          ],
        ),
      ),
    );
    ;
  }
}

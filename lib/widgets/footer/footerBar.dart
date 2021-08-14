import 'package:flutter/material.dart';
import 'package:znpsolutionswebpage/widgets/footer/footerItems.dart';

class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.bottomCenter,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.pin_drop_sharp,  color: Color.fromRGBO(232, 93, 51, 1)),
                FooterItem(
                    "Golden Towers, A8.8, Centre Urbain Nord, 1082 Tunis")
              ],
            ),
            Row(
              children: [Icon(Icons.phone ,  color: Color.fromRGBO(232, 93, 51, 1)), FooterItem("+21628758765")],
            ),
            Row(
              children: [Icon(Icons.mail , color: Color.fromRGBO(232, 93, 51, 1)), FooterItem("Contact@znp.solutions")],
            ),
          ],
        ),
      ),
    );
  }
}

class FooterBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1/7,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(249, 246, 241, 1),
      padding: EdgeInsets.only(left: 8.0),
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(top:4.0),
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.pin_drop_sharp,  color: Color.fromRGBO(232, 93, 51, 1)),
                  FooterItemMobile(
                      "Golden Towers, A8.8, Centre Urbain Nord, 1082 Tunis")
                ],
              ),
              Row(
                children: [Icon(Icons.phone ,  color: Color.fromRGBO(232, 93, 51, 1)), FooterItemMobile("+21628758765")],
              ),
              Row(
                children: [Icon(Icons.mail , color: Color.fromRGBO(232, 93, 51, 1)), FooterItemMobile("Contact@znp.solutions")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:znpsolutionswebpage/widgets/buttons/callContact.dart';

class ZnpDetails extends StatelessWidget {
  const ZnpDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650,
      child: Padding(
        padding: const EdgeInsets.only(left: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'Have a startup ',
                style: Theme.of(context).textTheme.headline3,
                //TextStyle(fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
                children: const <TextSpan>[
                  TextSpan(text: 'idea', style: TextStyle(fontWeight: FontWeight.bold , color: Color.fromRGBO(232, 93, 51, 1))),
                  TextSpan(text: ' ?'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We help software startups design their prototype, code their MVP, write their pitch deck and much more!',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.headline4,
              softWrap: true,
            ),
            SizedBox(
              height: 40,
            ),
            CallContact("Let\'s talk")
          ],
        ),
      ),
    );
  }
}

class ZnpDetailsMobile extends StatelessWidget {
  const ZnpDetailsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left:8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'Have a startup ',
                style: GoogleFonts.openSans(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
                //TextStyle(fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
                children: const <TextSpan>[
                  TextSpan(text: 'idea', style: TextStyle(fontWeight: FontWeight.bold , color: Color.fromRGBO(232, 93, 51, 1))),
                  TextSpan(text: ' ?'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We help software startups design their prototype, code their MVP, write their pitch deck and much more!',
              textAlign: TextAlign.left,
              style: GoogleFonts.openSans(fontSize: 19, fontWeight: FontWeight.w400, color: Colors.black),
              softWrap: true,
            ),
            SizedBox(
              height: 20,
            ),
            CallContact("Let\'s talk")
          ],
        ),
      ),
    );
  }
}
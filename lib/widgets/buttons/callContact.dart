import 'package:email_launcher/email_launcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallContact extends StatelessWidget {
  final String title;
  const CallContact(this.title);


  @override
  Widget build(BuildContext context) {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }
  final Uri emailLaunch = Uri(scheme: 'mailto',
    path: 'Contact@znp.solutions',
    query: encodeQueryParameters(<String, String>{
      'subject': 'Example Subject & Symbols are allowed!'
    }),
    );
    return InkWell(
      onTap: () {
          print("this is button clicked");
      },
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.button
        ),
        decoration: BoxDecoration(
            color: Color.fromRGBO(232, 93, 51, 1),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
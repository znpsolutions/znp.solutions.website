import 'package:flutter/cupertino.dart';

class CenteredView extends StatelessWidget {
  final Widget? child;
  const CenteredView({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 5),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1500),
        child: child,
      ),
    );
  }
}

class CenteredViewMobile extends StatelessWidget {
  final Widget? child;
  const CenteredViewMobile({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: 1.0, ),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1500),
        child: child,
      ),
    );
  }
}

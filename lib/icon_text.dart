import 'package:flutter/cupertino.dart';

import 'Constants.dart';

class IconTextWidget extends StatelessWidget {
  final String text;
  final IconData iconData;

  const IconTextWidget({this.text, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(text, style: lableTextStyle)
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';

class ReusableCardContainer extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  Function onTapFunc;

  ReusableCardContainer({@required this.color, this.cardChild, this.onTapFunc});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunc,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}

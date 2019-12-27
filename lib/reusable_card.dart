import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  //keys not needed since they are stateless
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({this.color, this.cardChild, this.onPress});
//  ReusableCard(@required this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

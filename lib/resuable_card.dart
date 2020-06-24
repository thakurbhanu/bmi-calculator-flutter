import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants_file.dart';


class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget childCard;
  final Function customOnPress;



  ReusableCard({@required this.colour, this.childCard, this.customOnPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: customOnPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

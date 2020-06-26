import 'package:flutter/material.dart';
import 'constants_file.dart';


class RoundIconButton extends StatelessWidget {

  final IconData roundIconChild;

  RoundIconButton({this.roundIconChild});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        null;
      },
      child: Icon(roundIconChild),
      elevation: 5.0,
      shape: CircleBorder(),
      fillColor: kPlusMinusColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}

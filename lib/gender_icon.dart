import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants_file.dart';

class genderIconWidget extends StatelessWidget {

  final IconData genderIcon;
  final String genderName;

  genderIconWidget ({this.genderIcon, this.genderName});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FaIcon(
          genderIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          genderName,
          style: kCustomGenderStyle
        ),
      ],
    );
  }
}

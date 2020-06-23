import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_icon.dart';
import 'resuable_card.dart';


const bottomComtainerHeight = 60.0;
const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff111328);
const bottomComtainerColor = Color(0xffeb1555);


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  Color prideCardColor = inactiveCardColor;


  void changeActiveColor(int genderID) {
    if (genderID == 1) {
      maleCardColor = activeCardColor;
    }

    else if (genderID == 2) {
      femaleCardColor = activeCardColor;
    }

    else {
      prideCardColor = activeCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          changeActiveColor(1);
                        });
                      },
                      child: ReusableCard(
                        childCard: genderIconWidget(
                          genderName: 'Male',
                          genderIcon: FontAwesomeIcons.mars,
                        ),
                        colour: maleCardColor,
                      ),
                    ),
                  ),

                  Expanded(

                    child: GestureDetector(

                      onTap: () {
                        setState(() {
                          changeActiveColor(2);
                        });
                      },

                      child: ReusableCard(
                        childCard: genderIconWidget(
                          genderIcon: FontAwesomeIcons.venus,
                          genderName: 'Female',
                        ),
                        colour: femaleCardColor,
//                      childCard: ,
                      ),),
                  ),
                  Expanded(
                    child: GestureDetector(

                      onTap: (){
                        setState(() {
                          changeActiveColor(3);
                        });
                      },

                      child: ReusableCard(
                        childCard: genderIconWidget(
                          genderIcon: FontAwesomeIcons.peace,
                          genderName: 'Pride',
                        ),
                        colour: prideCardColor,
//                      childCard: ,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: activeCardColor,),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: activeCardColor,),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor,),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomComtainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomComtainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}

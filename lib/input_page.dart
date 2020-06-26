import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_icon.dart';
import 'resuable_card.dart';
import 'constants_file.dart';
import 'results_page.dart';
import 'bottom_button.dart';
import 'round_icon_buttons.dart';

enum genderTypes {
  male,
  female,
  pride,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genderTypes selectedGender;

  int cmHeight = 150;
  int weight = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      customOnPress: () {
                        setState(() {
                          selectedGender = genderTypes.male;
                        });
                      },
                      childCard: genderIconWidget(
                        genderName: 'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                      colour: selectedGender == genderTypes.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(customOnPress: () {
                      setState(() {
                        selectedGender = genderTypes.female;
                      });
                    },
                      childCard: genderIconWidget(
                        genderIcon: FontAwesomeIcons.venus,
                        genderName: 'FEMALE',
                      ),
                      colour: selectedGender == genderTypes.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
//                      childCard: ,
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                        customOnPress: () {
                          setState(() {
                            selectedGender = genderTypes.pride;
                          });
                        },
                        childCard: genderIconWidget(
                          genderIcon: FontAwesomeIcons.peace,
                          genderName: 'PRIDE',
                        ),
                        colour: selectedGender == genderTypes.pride
                            ? kActiveCardColor
                            : kInactiveCardColor,
//                      childCard: ,
                      ),
                    ),
                ],
              ),
            ),

            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'HEIGHT',
                      style: kCustomGenderStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          cmHeight.toString(),
                          style: kCustomNumberStyle,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'cm',
                          style: kCustomGenderStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: kActiveSliderColor,
                        inactiveTrackColor: kInactiveSliderColor,
                        overlayColor: Color(0x29eb1555),
                        activeTrackColor: Colors.white,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 30,
                        ),

                      ),
                      child: Slider(
                        value: cmHeight.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            cmHeight = newValue.toInt();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      childCard: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kCustomGenderStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kCustomNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                roundIconChild: FontAwesomeIcons.plus,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              RoundIconButton(
                                roundIconChild: FontAwesomeIcons.minus ,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),


            BottomButton(
              bottomButtonString: 'CALCULATE',
              onPressBottomButton: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(),),);
            },
            ),
          ],
        ),
      ),
    );
  }
}


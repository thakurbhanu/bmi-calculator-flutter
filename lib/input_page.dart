import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


const bottomComtainerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const bottomComtainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(
//                      childCard: ,
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColor,),
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

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget childCard;

  ReusableCard({@required this.colour, this.childCard});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}

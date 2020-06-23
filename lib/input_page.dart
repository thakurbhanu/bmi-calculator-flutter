import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
                    child: ReusableCard(colour: Color(0xff1d1e33),),
                  ),
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33),),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: Color(0xff1d1e33),),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33),),
                  ),
                  Expanded(
                    child: ReusableCard(colour: Color(0xff1d1e33),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color colour;

  ReusableCard({@required this.colour}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}

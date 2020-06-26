import 'package:flutter/material.dart';
import 'constants_file.dart';
import 'results_page.dart';


class BottomButton extends StatelessWidget {

  Function onPressBottomButton;
  String bottomButtonString;
  BottomButton({@required this.onPressBottomButton, @required this.bottomButtonString});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressBottomButton,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10,),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            bottomButtonString,
            style: kCalculateButtonStyle,
          ),
        ),
      ),
    );
  }
}
//
//
//() {
//Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(),),);
//},
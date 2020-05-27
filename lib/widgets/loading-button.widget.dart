import 'package:flutter/material.dart';

class LodingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LodingButton({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Theme.of(context).primaryColor
                  : Colors.yellow.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                    color: invert ? Colors.white : Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Big Shoulders Display"),
              ),
              onPressed: func,
            ),
          );
  }
}

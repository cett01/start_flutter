import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Created by cett01 on 20.07.2020

class OwnButton extends StatelessWidget {
  OwnButton(
      {@required this.onPressed,
      @required this.text,
      this.fillColor = Colors.green,
      this.splashColor = Colors.greenAccent});

  final GestureTapCallback onPressed;
  final String text;
  final Color fillColor;
  final Color splashColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: fillColor,
      splashColor: splashColor,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.face,
              color: Colors.amber,
            ),
            SizedBox(
              width: 10.0,
            ),
            new Text(
              text,
              maxLines: 1,
              style: new TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}

import 'package:flutter/material.dart';

class MrtListItem extends StatelessWidget {
  const MrtListItem({
    Key key,
    this.text,
    this.color,
  }) : super(key: key);

  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(15.0),
          // padding: const EdgeInsets.all(3.0),
          decoration: new BoxDecoration(
            border: new Border.all(color: color, width: 5),
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //         <--- border radius here
                ),
          ),
          child: new Text(""),
        ),
        Text(text),
      ],
    );
  }
}

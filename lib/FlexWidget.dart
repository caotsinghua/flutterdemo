import 'package:flutter/material.dart';

class FlexView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flexview"),
      ),
      body: Flex(
        direction: Axis.horizontal,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.purple,
              height: 30,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              height: 50,
            ),
          ),
          Container(
            width: 30,
            height: 30,
            color: Colors.teal,
            margin: EdgeInsets.all(10),
          )
        ],
      ),
    );
  }
}

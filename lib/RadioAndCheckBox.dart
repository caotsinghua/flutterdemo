import 'package:flutter/material.dart';

class RadioAndCheckBox extends StatefulWidget {
  _RadioAndCheckBoxState createState() => _RadioAndCheckBoxState();
}

class _RadioAndCheckBoxState extends State<RadioAndCheckBox> {
  bool _switchSelected = false;
  bool _checkBoxSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value) {
            setState(() {
              print('当前switch: $value');
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkBoxSelected,
          onChanged: (value) {
            setState(() {
              print('checkbox:$value');
              _checkBoxSelected = value;
            });
          },
        )
      ],
    );
  }
}

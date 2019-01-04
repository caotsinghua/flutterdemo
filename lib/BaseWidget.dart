import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'RadioAndCheckBox.dart';

class TextView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 200, minHeight: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "一个很长的" * 5,
              style: TextStyle(fontSize: 20),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "一个很长的",
              style: TextStyle(
                  fontSize: 20,
                  background: new Paint()..color = Colors.pink,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(text: "Hello:"),
                TextSpan(
                    text: 'world',
                    style: TextStyle(color: Colors.purple, fontSize: 20))
              ]),
              textAlign: TextAlign.left,
            ),
            RadioAndCheckBox()
          ],
        ),
      ),
    );
  }
}

class ButtonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("raisedButton"),
          color: Colors.lightGreen,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {
            Fluttertoast.showToast(
                msg: "点击了raisedbutton",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white);
          },
        ),
        FlatButton(
          child: Text("flat button"),
          onPressed: () {
            Fluttertoast.showToast(msg: "点击了flatbutton");
          },
        ),
        OutlineButton(
          child: Text("outlineButton"),
          color: Colors.lightBlueAccent,
          onPressed: () {
            Fluttertoast.showToast(msg: "点击了outlinebutton");
          },
        ),
        Container(
          child: Image.network(
            "https://cdn.jsdelivr.net/gh/flutterchina/flutter-in-action@1.0/docs/imgs/image-20180829163427556.png",
            fit: BoxFit.fill,
            color: Colors.orange,
            colorBlendMode: BlendMode.colorBurn,
          ),
          width: 300,
        )
      ],
    );
  }
}

class BaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("base widget"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[TextView(), ButtonView()],
      ),
    );
  }
}

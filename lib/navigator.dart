import 'package:flutter/material.dart';
import 'BaseWidget.dart';
import 'FormWidget.dart';
import 'FlexWidget.dart';
import 'BuildingLayout.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("pageA"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("launch screen"),
              onPressed: () {
                // 导航
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PageB()));
              },
            ),
            RaisedButton(
              child: Text("base widget"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BaseWidget()));
              },
            ),
            RaisedButton(
              child: Text("表单"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FormView()));
              },
            ),
            RaisedButton(
              child: Text("flex布局"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FlexView()));
              },
            ),
            IconButton(
              icon: Icon(Icons.star_half),
              color: Colors.teal,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LayoutView();
                }));
              },
            )
          ],
        ));
  }
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pageA"),
      ),
      body: Container(
          child: RaisedButton(
        child: Text("goback"),
        onPressed: () {
          // 返回
          Navigator.pop(context);
        },
      )),
    );
  }
}

import 'package:flutter/material.dart';

Widget TitleWidget = Container(
  color: Colors.grey,
  padding: const EdgeInsets.all(20.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Expanded(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text("Oeasda Dsad Dsd"),
            ),
            Text(
              "Asdsd Ddsd",
              style: TextStyle(fontSize: 15, color: Colors.lightGreen),
            )
          ],
        ),
        color: Colors.red,
      )),
      Container(
        color: Colors.teal,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.star,
              color: Colors.red,
            ),
            Text("33")
          ],
        ),
      )
    ],
  ),
);
Widget ButtonRowWidget = Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.amber,
    child: DefaultTextStyle(
      style: TextStyle(color: Colors.white, fontSize: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Column(
              children: <Widget>[Icon(Icons.call), Text("call")],
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Column(
              children: <Widget>[Icon(Icons.router), Text("router")],
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Column(
              children: <Widget>[Icon(Icons.share), Text("share")],
            ),
            onPressed: () {},
          ),
        ],
      ),
    ));
Widget TextContentWidget = Container(
  padding: EdgeInsets.all(20),
  color: Colors.grey[300],
  child: Text(
    '''
  hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d. hello

  wordl
  idont asdad dsa d.
  ''',
    softWrap: true,
  ),
);

class LayoutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("layoutss"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
                width: MediaQuery.of(context).size.width, height: 180),
            child: Image.network(
              'https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          TitleWidget,
          ButtonRowWidget,
          TextContentWidget
        ],
      ),
    );
  }
}

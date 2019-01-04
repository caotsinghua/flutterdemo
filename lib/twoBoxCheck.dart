import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  @override
  TabBoxAState createState() {
    // TODO: implement createState
    return new TabBoxAState();
  }
}

class TabBoxAState extends State<TapBoxA> {
  bool _active = false;
  void _toggleActive() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _toggleActive,
      child: new Center(
          child: new Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        child: new Text(
          _active ? 'Active' : 'Inactive',
          style: new TextStyle(fontSize: 20, color: Colors.white),
        ),
        decoration:
            new BoxDecoration(color: _active ? Colors.green[400] : Colors.grey),
      )),
    );
  }
}

class TapBoxB extends StatelessWidget {
  TapBoxB({Key key, this.bActive = false, this.onChanged}) : super(key: key);
  final bActive;
  final ValueChanged<bool> onChanged;
  void _bActiveChanged() {
    onChanged(!bActive);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _bActiveChanged,
      child: new Center(
        child: new Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          child: new Text(bActive ? 'Active' : 'InActive',
              style: new TextStyle(fontSize: 20, color: Colors.white)),
          decoration:
              new BoxDecoration(color: bActive ? Colors.green : Colors.blue),
        ),
      ),
    );
  }
}

class ParentWidgetB extends StatefulWidget {
  @override
  ParentWidgetBState createState() {
    // TODO: implement createState
    return new ParentWidgetBState();
  }
}

class ParentWidgetBState extends State<ParentWidgetB> {
  bool _bActive = false;
  void _handleTapBoxBChanged(bool value) {
    setState(() {
      _bActive = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TapBoxB(bActive: _bActive, onChanged: _handleTapBoxBChanged);
  }
}

class BoxWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: ' box',
        home: new Scaffold(
          appBar: new AppBar(title: const Text("boxes")),
          body: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[new TapBoxA(), new ParentWidgetB()],
          ),
        ));
  }
}

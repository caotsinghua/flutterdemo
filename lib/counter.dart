import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key key, this.initialValue = 0});
  final int initialValue;
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 初始化state
    _counter = widget.initialValue;
    print("初始化状态：${_counter}");
  }

  @override
  Widget build(BuildContext context) {
    print("build start");
    return Center(
        child: FlatButton(
      child: Text(
        '$_counter',
        style: TextStyle(color: Colors.blue, fontSize: 20),
      ),
      onPressed: () => setState(() {
            print("setstate");
            _counter++;
            print('counter $_counter initialValue: ${widget.initialValue}');
          }),
    ));
  }

  @override
  void didUpdateWidget(Counter oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("didupdate widget");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    // 当初次加载的时候调用，
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}

class CountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("counter"),
      ),
      body: Counter(),
    );
  }
}

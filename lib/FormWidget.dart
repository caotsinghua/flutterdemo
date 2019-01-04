import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  TextEditingController _usernameController = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_usernameController.selection);
    _usernameController.text = "初始";
    // _usernameController.addListener(() {
    //   print("输入了 ${_usernameController.text}");
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          controller: _usernameController,
          decoration: InputDecoration(
              fillColor: Colors.pinkAccent,
              filled: true,
              labelText: "用户名",
              hintText: "在此输入...",
              prefixIcon: Icon(Icons.person)),
          onSubmitted: (e) {
            print(e);
          },
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "在此输入密码...",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        )
      ],
    );
  }
}

class FormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单"),
      ),
      body: Center(
        child: FormWidget(),
      ),
    );
  }
}

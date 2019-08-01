import 'package:flutter/material.dart';

void main() => runApp(FormWidget());

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormWidgetState();
  }
}

class FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _userGender = '男';
  String _userName;
  String _userPassword;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter UI基础Widget -- Form")),
          body: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                DropdownButtonFormField<String>(
                  value: _userGender,
                  items: ['男', '女'].map((label) => DropdownMenuItem(child: Text(label), value: label,)).toList(),
                  onChanged: (value){
                    setState(() {
                      _userGender = value;
                    });
                  },
                  onSaved: (value){
                    _userGender = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: '用户名'),
                  validator: (value) { //
                    if (value?.length <= 5) {
                      return '用户名必须大于 5 个字符';
                    }
                  },
                  onSaved: (value) {
                    _userName = value;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: '密码'),
                  obscureText: true,
                  validator: (value) {
                    if (value?.length <= 6) {
                      return '密码必须大于 6 个字符';
                    }
                  },
                  onSaved: (value) {
                    _userPassword = value;
                  },
                ),
               Builder( //解决Scaffold.of(context) 里的 context 没有 Scaffold，找不到 Scaffold的报错，
                   builder: (context){
                     return  RaisedButton(
                       child: Text('注册'),
                       onPressed: () {
                         if (_formKey.currentState.validate()) {
                           _formKey.currentState.save();
                           _showSnar(context);
                         }
                       },
                     );
                   }
               )
              ],
            ),
          )),
    );
  }

  void _showSnar(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$_userGender---$_userName-----$_userPassword")));
    print(_userGender);
    print(_userName);
    print(_userPassword);
  }
}

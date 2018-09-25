library login;
import 'package:flutter/material.dart';
import 'package:admin/admin.dart';

class LoginPage extends StatefulWidget{
  final String title;

  LoginPage({Key key, this.title}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }

}

class LoginState extends State<LoginPage>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  void login() {
    if(email.text.length < 5){
      final snackBar = new SnackBar(
        content: new Text("email is invalid"),
      );
      _scaffoldKey.currentState.showSnackBar(snackBar);
    }
    print(name.text);
    print(email.text);
    print(password.text);

    Navigator.push(context, MaterialPageRoute(
      builder: (context) =>  new UsersListPage(title: "Users")
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
    
        child: new Padding(
          padding: new EdgeInsets.all(30.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                controller: name,
                decoration: new InputDecoration(
                  hintText: "Name"
                ),

              ),
              new TextField(
                controller: email,
                decoration: new InputDecoration(
                  hintText: "email"
                ),
                
             ),
              new TextField(
                controller: password,
               obscureText: true,
                decoration: new InputDecoration(
                  hintText: "password"
                ),
              ),
              new RaisedButton(
                onPressed: login,
                child: new Text("Login"),
              ),
            ],
          ),
        ), 
      ),
    );
  }

}
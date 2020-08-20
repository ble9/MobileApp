import 'package:Lesson2/screens/userhome_screen.dart';
import 'package:flutter/material.dart';

class FormDemoScreen extends StatefulWidget {
  static const routeName = '/FormDemoScreen';

  @override
  State<StatefulWidget> createState() {
    return _FormDemoState();
  }
}

class _FormDemoState extends State<FormDemoScreen> {
  _Controller con;
  String errorMessage;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form demo'),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Sign in',
                style: TextStyle(fontSize: 20.0),
              ),
              errorMessage == null
                  ? SizedBox(
                      height: 1.0,
                    )
                  : Text(
                      errorMessage,
                      style: TextStyle(fontSize: 15.0, color: Colors.red),
                    ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                validator: con.validatorEmail,
                onSaved: con.onSaveEmail,
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                validator: con.validatorPassword,
                onSaved: con.onSavedPassword,
              ),
              RaisedButton(
                child: Text('SignIn'),
                onPressed: con.signIn,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Controller {
  _FormDemoState _state;

  _Controller(this._state);

  Map userInfo = {};

  void signIn() {
    if (_state.formKey.currentState.validate()) {
      _state.formKey.currentState.save();
      if (userInfo['password'] != 'eatpho') {
        _state.render(() {
          _state.errorMessage = 'wrong password/email';
        });
        return;
      }
      Navigator.pushNamed(_state.context, UserHomeScreen.routeName, arguments:userInfo,);
    }
  }

  String validatorEmail(String value) {
    if (value.contains('@') && value.contains('.'))
      return null;
    else
      return 'not valid email format';
  }

  void onSaveEmail(String value) {
    userInfo['email'] = value;
  }

  String validatorPassword(String value) {
    if (value.length < 4) {
      return ' min 4 char';
    } else {
      return null;
    }
  }

  void onSavedPassword(String value) {
    userInfo['password'] = value;
  }
}

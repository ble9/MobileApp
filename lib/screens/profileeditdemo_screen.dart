import 'package:Lesson2/model/profileedit.dart';
import 'package:flutter/material.dart';

class ProfileEditScreen extends StatefulWidget {
  static const routeName = '/ProfileEditScreen';

  @override
  State<StatefulWidget> createState() {
    return _ProfileEditState();
  }
}

class _ProfileEditState extends State<ProfileEditScreen> {
  _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(
            10.0,
          ),
          color: Colors.blue[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name: ${con.profileedit.name}',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Age: ${con.profileedit.age}',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Classificaiton:${con.profileedit.classification.toString().split(".")[1]}',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Major: ${con.profileedit.major.toString().split(".")[1]}',
                style: TextStyle(fontSize: 20.0),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: con.profileedit.Languages[Language.Dart],
                    onChanged: null,
                  ),
                  Text('Dart'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: con.profileedit.Languages[Language.Java],
                    onChanged: null,
                  ),
                  Text('Java'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: con.profileedit.Languages[Language.Cpp],
                    onChanged: null,
                  ),
                  Text('c++'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Controller {
  _ProfileEditState _state;
  ProfileEdit profileedit;

  _Controller(this._state);

  void buttonPressed() {
    _state.render(() {});
  }
}

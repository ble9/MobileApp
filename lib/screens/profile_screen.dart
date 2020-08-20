import 'package:Lesson2/model/profile.dart';
import 'package:Lesson2/screens/profileedit_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/ProfileScreen';

  @override
  State<StatefulWidget> createState() {
    return _ProfileEditState();
  }
}

class _ProfileEditState extends State<ProfileScreen> {
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: con.edit,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(
            20.0,
          ),
          color: Colors.blue[200],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Name: ${con.profile.name}',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Age: ${con.profile.age}',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Classificaiton:${con.profile.classification.toString().split(".")[1]}',
                style: TextStyle(fontSize: 20.0),
              ),
              Text(
                'Major: ${con.profile.major.toString().split(".")[1]}',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox( height: 20.0,),
              Text('Language PRoficiency', style: TextStyle(fontSize: 20.0),),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: con.profile.Languages[Language.Dart],
                    onChanged: null,
                  ),
                  Text('Dart'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: con.profile.Languages[Language.Java],
                    onChanged: null,
                  ),
                  Text('Java'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: con.profile.Languages[Language.Cpp],
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
  Profile profile= Profile();
  _Controller(this._state);

  void edit(){
    Navigator.pushNamed(_state.context, ProfileEditScreen.routeName, arguments: profile);
  }
}

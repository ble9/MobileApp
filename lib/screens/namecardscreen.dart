import 'package:flutter/material.dart';

class NameCardScreen extends StatelessWidget {
  static const routeName = '/nameCardScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('namecard Widget Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 0),
        child: Column(
            children: <Widget>[
        Center(
        child:CircleAvatar(
            backgroundImage: AssetImage('images/universe.jpg'),
        radius: 70.0,
      ),
    ),
          Divider( height: 20.0, color: Colors.red),
            Text('Name', style: TextStyle(color:Colors.teal)),
            Text('Brian Le', style: TextStyle(color: Colors.teal)),
            SizedBox(height:10.0),
            Text('Job Title',style: TextStyle(color:Colors.teal)),
            Text('Informatics Technician', style: TextStyle(color:Colors.teal)),
            SizedBox(height:10.0),
              Row(
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 10.0),
                Text('ble9@uco.edu'),
                  ],
              ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                  Icon(Icons.phone),
                  SizedBox(width: 10.0),
                  Text('1-900-123-3213'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
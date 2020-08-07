import 'package:flutter/material.dart';

class CounterDemoScreen extends StatefulWidget {
  static const routeName = '/counterdemoscreen';

  @override
  State<StatefulWidget> createState() {
    return _CounterDemoState();
  }
}

class _CounterDemoState extends State<CounterDemoScreen> {
  int count = 0;
  _Controller con;
 @override
 void initState(){
   super.initState();
    con= _Controller(this);
 }
 void render(fn){
   setState(fn);
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('counter is: $count', style:TextStyle(fontSize: 30.0),),
            RaisedButton.icon(
              onPressed: con.incrementCounter,
              icon: Icon(Icons.arrow_upward),
              label: Text('Increment', style:TextStyle(fontSize: 20.0, color:Colors.teal),),
              color:Colors.amber,
            ),
            RaisedButton.icon(
              onPressed: con.decrementCounter,
              icon: Icon(Icons.arrow_downward),
              label: Text('Decrement', style:TextStyle(fontSize: 20.0),),
            )
          ],
        ),
      ),
    );
  }
}

class _Controller{
  _CounterDemoState _state;
  _Controller(this._state);
  void incrementCounter() {
    _state.render(() {
      ++_state.count;
    });
  }

  void decrementCounter() {
    _state.render(() {
      --_state.count;
    });
  }

}

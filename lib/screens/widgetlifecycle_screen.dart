import 'package:flutter/material.dart';

class WidgetLifeCycleScreen extends StatefulWidget {
  static const routeName = '/WidgetlifeCycleScreen';

  @override
  State<StatefulWidget> createState() {
    return _WidgetLifeCycleScreen();
  }
}

class _WidgetLifeCycleScreen extends State<WidgetLifeCycleScreen> {
  int count = 0;
  _Controller con;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
    print('********** initState()');
    print('                  == e.g., GPS listener, Camera Controller');
  }

  void render(fn) {
    setState(fn);
  }

  @override
  void dispose() {
    print('********** dispose()');
    print('                  == e.g., GPS listener, Camera Controller');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('********** build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('widget life cycle'),
      ),
      body: Column(
        children: <Widget>[
          Text(count.toString()),
          RaisedButton(
            onPressed: con.buttonPressed,
            child: Text('Increase'),
          )
        ],
      ),
    );
  }
}

class _Controller {
  _WidgetLifeCycleScreen _state;

  _Controller(this._state);

  void buttonPressed() {
    _state.render(() {
      ++_state.count;
    });
  }
}

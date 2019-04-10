import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clicker',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Clicker'),
        ),
        body: Clicker(),
      ),
    );
  }
}

class Clicker extends StatefulWidget {
  @override
  _ClickerState createState() => _ClickerState();
}

class _ClickerState extends State<Clicker> {
  int counter = 0;

  onButtonClicked() {
    setState(() {
      print('Button clicked');
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Button clicked $counter time(s).'),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            textColor: Theme.of(context).primaryTextTheme.button.color,
            child: Text('ADD'),
            onPressed: onButtonClicked,
          )
        ],
      ),
    );
  }
}

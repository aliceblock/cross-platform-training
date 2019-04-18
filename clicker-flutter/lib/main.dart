import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clicker',
      home: Clicker(),
    );
  }
}

class Clicker extends StatefulWidget {
  @override
  _ClickerState createState() => _ClickerState();
}

class _ClickerState extends State<Clicker> {
  int counter = 0;

  onMinusClicked() {
    setState(() {
      print('Minus clicked');
      counter -= 1;
    });
  }

  onButtonClicked() {
    setState(() {
      print('Button clicked');
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clicker'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Button clicked $counter time(s).'),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  textColor: Theme.of(context).primaryTextTheme.button.color,
                  child: Text('MINUS'),
                  onPressed: onMinusClicked,
                ),
                RaisedButton(
                  color: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).primaryTextTheme.button.color,
                  child: Text('ADD'),
                  onPressed: onButtonClicked,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

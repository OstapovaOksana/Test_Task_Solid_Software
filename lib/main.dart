import 'dart:math';
import 'package:color_changer/text.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Color _color = Colors.white;

  void changeColor(){
    final random = Random();

    setState(() {
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

          appBar: AppBar(

            title: Text("Color Changer"),
        ),
          body: Container(

            color: _color,
            child: Stack(

              children: <Widget>[

                MyText(_color),

                GestureDetector(
                  onTap: (){
                    changeColor();
                  })
              ],
            )
          ),
        )
    );
  }
}

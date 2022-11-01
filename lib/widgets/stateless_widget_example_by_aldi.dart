import 'package:flutter/material.dart';

class StatelessWidgetExampleByAldi extends StatelessWidget {
  const StatelessWidgetExampleByAldi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      color: Colors.blue,
      padding: EdgeInsets.all(32),
      child: SizedBox(
          width: 100,
          child: Text("Ini Contoh Widget Stateless",style: TextStyle(color: Colors.white),)),
    ),);
  }
}

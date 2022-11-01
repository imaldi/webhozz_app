import 'package:flutter/material.dart';

class StatefulWidgetExampleByAldi extends StatefulWidget {
  const StatefulWidgetExampleByAldi({Key? key}) : super(key: key);

  @override
  _StatefulWidgetExampleByAldiState createState() => _StatefulWidgetExampleByAldiState();
}

class _StatefulWidgetExampleByAldiState extends State<StatefulWidgetExampleByAldi> {
  var contohState = 0;
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      padding: EdgeInsets.all(32),
      margin: EdgeInsets.all(16),
      color: Colors.blue,
      child: SizedBox(
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Contoh Widget Statefull, tekan tombol di bawah untuk merubah state:",style: TextStyle(color: Colors.white),),
            ElevatedButton(
                onPressed: (){
              setState(() {
                contohState++;
              });
            },
                style: ElevatedButton.styleFrom(primary: Colors.green),

                child: Text("$contohState"))
          ],
        ),
      ),
    ),);
  }
}

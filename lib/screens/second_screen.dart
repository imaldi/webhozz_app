import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webhozz_app/json_example/json_example.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  late TextEditingController textEditingController;
  late TextEditingController textEditingController2;
  int? numberValue;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    textEditingController2 = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is the second screen"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "4. Form Sederhana",
                style: TextStyle(fontSize: 32),
              ),

              Text(
                "Silahkan Masukkan angka pertama dan kedua, dan tekan tombol untuk mendapatkan hasilnya",
                style: TextStyle(fontSize: 16),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  enabled: true,
                  controller: textEditingController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Angka Pertama",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  enabled: true,
                  controller: textEditingController2,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Angka Kedua",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      numberValue = int.parse(textEditingController.text) * int.parse(textEditingController2.text);
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text("Perkalian")),

              Text(
                "${numberValue != null ? ("${textEditingController.text} x ${textEditingController2.text} = $numberValue") : ""}",
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 64,
              ),
              Divider(
                thickness: 5,
              ),
              Text(
                "5. Contoh Widget Stateless dan Stateful",
                style: TextStyle(fontSize: 32),
              ),

              Text(
                "Nama-nama Makanan Kesukaan Aldi:",
                style: TextStyle(fontSize: 16),
              ),

              Container(
                child: Builder(builder: (c) {
                  var listMakananFavoriteAldi = json.decode(jsonExample)['makanan_favorit'];
                  return ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: listMakananFavoriteAldi.length,
                      padding: EdgeInsets.all(8),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (c,i){
                    return ListTile(
                      tileColor: i%2==0?Colors.green:Colors.lightGreen,
                      title: Text("${listMakananFavoriteAldi[i]["nama_makanan"]}"),);
                  });
                  // return Text("${listMakananFavoriteAldi}");
                }),
              ),
              SizedBox(
                height: 64,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

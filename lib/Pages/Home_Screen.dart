import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_firebase_notify/Provider/logic.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {

    var myalldata = Provider.of<alllogic>(context);

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [

            Text(myalldata.myrealresult.toString()),

            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              controller: myalldata.input1,
            ),
            SizedBox(height: 5),
            TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              controller: myalldata.input2,
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              controller: myalldata.input3,
            ),

            SizedBox(height: 15),

            ElevatedButton(onPressed: () {
              myalldata.Convert();
            }, child: Text("Show Result"))


          ]),
        ),
      ),

    );
  }
}

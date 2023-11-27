import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_firebase_notify/Provider/logic.dart';

import 'Pages/Home_Screen.dart';

void main(){
  runApp(MultiProvider(providers: [

    ChangeNotifierProvider(create: (context) => alllogic(),),

  ],child: MyApp(),));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_Screen(),
    );
  }
}

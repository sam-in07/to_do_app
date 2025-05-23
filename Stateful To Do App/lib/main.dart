import 'package:flutter/material.dart';
import 'package:to_do_app/ToDOPage.dart';

void main() {
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      title: "TO DO APP",
      theme: ThemeData(primarySwatch: Colors.green),
      home: ToDOPage() ,
    );
  }

}
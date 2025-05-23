import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToDOPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return ToDOPageView();
  }

}

class ToDOPageView extends State<ToDOPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(title: Text('TODO'),),
       body: Container(
         padding: EdgeInsets.all(10),
         child: Column(
            children: [
              Expanded(
                  child:  Text('input form ')),  //uporer part a form
              Expanded(child:  Text('List view ')), //nicher part a list view 
            ],
         ),
       ),
    );
  }

}


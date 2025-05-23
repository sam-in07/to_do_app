import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Style.dart';

class ToDOPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return ToDOPageView();
  }

}

class ToDOPageView extends State<ToDOPage> {
  List TODOlist=[{"1":"1"}, {"1":"1"} , {"1":"1"}, {"1":"1"}];
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
                  flex: 10 ,
                  child: Row(
                    children: [
                       Expanded(flex: 70,  child: TextFormField(decoration: AppInputDecora("list "),)) ,
                      // Expanded(flex: 30 , child: ElevatedButton(onPressed: (){}, child: Text('ADD'), style: AppButtonstyle(),)) ,
                       Expanded(flex: 20 , child: Padding(padding: EdgeInsets.only(left: 5) , child: ElevatedButton(onPressed: (){}, child: Text('ADD'), style: AppButtonstyle(),), )   ) ,
                    ],
                  )

              ),      //uporer part a form


              Expanded(
                   flex: 90,
                  child:  ListView.builder(
                    itemCount: TODOlist.length,
                    itemBuilder: (context,index) {
                      return Card(
                         child: Sizebox50(
                           Row(
                             children: [
                               Expanded(flex: 80,  child: Text("ITEM")) ,
                             //  Expanded(flex: 20 , child: TextButton(onPressed: (){}, child: Icon(Icons.delete), style: AppButtonstyle(),)) ,
                               Expanded(flex: 20 , child: TextButton(onPressed: (){}, child: Icon(Icons.delete), style: AppButtonstyle(),)) ,
                             ],
                           )
                         )
                      );
                    },
                  )
               ),
              //nicher part a list view
            ],
         ),
       ),
    );
  }

}


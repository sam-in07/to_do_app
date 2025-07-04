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
 // List TODOlist=[{"1":"1"}, {"1":"1"} , {"1":"1"}, {"1":"1"}] ;
  List TODOlist=[] ;
  String Item = " ";
  // Item gula chnage text  form ar Onchanged listerner  item take read korbo
  MyInputonChange(content)
  {
    // TODOlist.add(content);
     //item modhe set na kore todo list a set kortesi

     // TODOlist.add({"item" : content});

     // ar pore list a add kortesii

    // Run time value sathe view take refresh korte hobe  oijnno sob gula kati SetState ke use

    setState(() {
     // TODOlist.add({"item" : content});
      Item = content;
    });

  }

  AddItem(){
    setState(() {
      TODOlist.add({"item" : Item});

    });
  }

 RemoveItem (index) {
    setState(() {
      TODOlist.removeAt(index);
    });
 }
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
                       Expanded(flex: 70,  child: TextFormField(onChanged: (content) {MyInputonChange(content);},  decoration: AppInputDecora("list "),)) ,
                      // onchanged ar COntent take pass korachiii
                      // Expanded(flex: 30 , child: ElevatedButton(onPressed: (){}, child: Text('ADD'), style: AppButtonstyle(),)) ,
                       Expanded(flex: 20 , child: Padding(padding: EdgeInsets.only(left: 5) , child: ElevatedButton(onPressed: (){AddItem();}, child: Text('ADD'), style: AppButtonstyle(),), )   ) ,
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
                               Expanded(flex: 80,  child: Text(TODOlist[index]['item'].toString())) ,
                             //  Expanded(flex: 20 , child: TextButton(onPressed: (){}, child: Icon(Icons.delete), style: AppButtonstyle(),)) ,
                              // Expanded(flex: 20 , child: TextButton(onPressed: (){RemoveItem(TODOlist[index]);}, child: Icon(Icons.delete), )) , bhul line
                               Expanded(flex: 20 , child: TextButton(onPressed: (){RemoveItem(index);}, child: Icon(Icons.delete), )) ,
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


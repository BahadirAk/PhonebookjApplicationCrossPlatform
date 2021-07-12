import 'package:flutter/material.dart';

class Keypad extends StatelessWidget{
  // TextEditingController? callController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      numberWidget(),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 70, top: 30), child: IconButton(onPressed: (){}, icon: Text("1", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("2", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("3", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),)
      ],),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 70, top: 30), child: IconButton(onPressed: (){}, icon: Text("4", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("5", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("6", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),)
      ],),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 70, top: 30), child: IconButton(onPressed: (){}, icon: Text("7", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("8", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("9", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),)
      ],),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 70, top: 30), child: IconButton(onPressed: (){}, icon: Text("*", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("0", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),),
        Padding(padding: EdgeInsets.only(left: 40, top: 30), child: IconButton(onPressed: (){}, icon: Text("#", style: TextStyle(color: Colors.white, fontSize: 40),), iconSize: 50,),)
      ],),
      Row(children: [
        Padding(padding: EdgeInsets.only(left: 175, top: 10), child: IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.greenAccent,), iconSize: 50,),),
      ],)
    ],);
  }

 Widget numberWidget() {
  return Padding(padding: EdgeInsets.only(left: 30, top: 10, right: 30),
          child: 
          TextFormField(
            // controller: callController,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
            ),
            initialValue: "",
            style: TextStyle(fontSize: 20, color: Colors.white),
            cursorColor: Colors.white,
          ),
          );
} 
}
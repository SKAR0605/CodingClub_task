import 'package:flutter/material.dart';


class PracticePage extends StatefulWidget{
  const PracticePage({Key? key}) : super(key: key);
  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage>{
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Text('FlashCards'),
    ),
    body: Column(
      children: <Widget>[
        Container(
        child: Column(
        children: [
          Text('Card #1', style: TextStyle(color:Colors.white),),
          Spacer(flex: 2),
          Text('Title', style: TextStyle(color:Colors.white),),
      ]
  ),

  alignment: Alignment.center,
  width: 200,
  height: 100,
  color: Colors.black,
  ),
      Row(
          children: <Widget>[
            TextButton(onPressed: (){}, child: Text("Show answer"),),
            IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next), color: Colors.black,),

  ]
          ),
      ]
    ),
  );

}

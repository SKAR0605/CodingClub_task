import 'package:flutter/material.dart';


class CardsPage extends StatefulWidget{
  const CardsPage({Key? key}) : super(key: key);
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage>{
  int currentIndex = 0;
  @override
  var myList = [0,1,2,3,4];
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Text('FlashCards'),
    ),
    body: new Column(
        children: <Widget>[
          const Divider(
            color: Colors.grey,
            thickness: 3,
          ),
          new Expanded(
            child: GridView.builder( itemBuilder: (context, index){
              return Container(
                child: Column(
                    children: [
                      Text('Title', style: TextStyle(color:Colors.white),),
                      Text('Answer', style: TextStyle(color:Colors.white),),
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete), color: Colors.white,),
                    ]
                ),

                alignment: Alignment.center,
                width: 200,
                height: 100,
                color: Colors.black,
              );
            }, itemCount: myList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 100,
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
              ),
            ),

          ),
        ]
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){},
      backgroundColor: Colors.black,
    ),
  );

}
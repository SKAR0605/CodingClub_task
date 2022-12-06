import 'package:flutter/material.dart';
import 'package:flutter_lesson/Pages/practice.dart';
import 'package:flutter_lesson/Pages/cards.dart';

void main(){
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>{
  int currentIndex = 0;
  final screens = [
    CardsPage(),
    PracticePage(),
  ];
  @override

  Widget build(BuildContext context){
    var myList = [0,1,2,3,4];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('FlashCards'),
        ),
       body:screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Cards',
              // backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Practice',
              backgroundColor: Colors.black,
            ),
          ]
        )



      ),
    );
  }
}
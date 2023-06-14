import 'package:flutter/material.dart';
import 'klinfeet_theme.dart';
import 'cards/card1.dart';
import 'cards/card2.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
     Card1(),
     Card2(),
    Container(color: Colors.deepOrange,)
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final theme = KlinFeetTheme.light();
    return Scaffold(
      appBar: AppBar(
        title: Text('Klin Feet', style: theme.textTheme.displayLarge,),
        centerTitle: true,
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: theme.textSelectionTheme.selectionColor,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
            label: 'Shoe1'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Shoe2'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Shoe3'
          ),
        ],
      ),
    );
  }
}

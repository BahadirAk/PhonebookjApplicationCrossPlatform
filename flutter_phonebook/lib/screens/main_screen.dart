import 'package:flutter/material.dart';
import 'package:flutter_phonebook/screens/contacts.dart';
import 'package:flutter_phonebook/screens/favorites.dart';
import 'package:flutter_phonebook/screens/keypad.dart';
import 'package:flutter_phonebook/screens/recents.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State {
  int _selectedScreenIndex = 0;
  List _screens = [{"screen": Favorites()},{"screen": Recents()},{"screen": Contacts()},{"screen": Keypad()}];
  void _selectScreen(int index){setState(() { _selectedScreenIndex = index;});}

  //diyor ki bu nullable bir alan emin misin gelceğnie sende hayır boş gelmeyecek demek için ! koyuyosun
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(
          "Phonebook Application",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: _screens[_selectedScreenIndex]["screen"],),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: _selectedScreenIndex,
      onTap: _selectScreen,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites", backgroundColor: Colors.black87),
        BottomNavigationBarItem(icon: Icon(Icons.recent_actors), label: "Recents", backgroundColor: Colors.black87),
        BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contacts", backgroundColor: Colors.black87),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Keypad", backgroundColor: Colors.black87),
      ],
      ),
    );
  }
}

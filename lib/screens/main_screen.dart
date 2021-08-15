import 'package:flutter/material.dart';
import 'package:papp/screens/home/home_screen.dart';
import 'package:papp/screens/list/list_screen.dart';
import 'package:papp/screens/search/search_screen.dart';
import 'package:papp/screens/favourite/favourite_screen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> pagelist = <Widget>[
    HomeScreen(),
    ListScreen(),
    FavoriteScreen(),
    SearchScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagelist[_selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "All"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      ],
    );
  }
}

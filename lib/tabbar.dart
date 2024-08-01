// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

// Koneksi ke halaman :
import 'main.dart';
import 'destination.dart';
import 'tour.dart';
import 'news.dart';
import 'account.dart';

void main() {
  runApp(const TabBarNav());
}

class TabBarNav extends StatefulWidget {
  const TabBarNav({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabBarNavState createState() => _TabBarNavState();
}

class _TabBarNavState extends State<TabBarNav> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    DestinationPage(),
    TourPage(),
    NewsPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _selectedIndex = 0;
            });
          },
          shape: CircleBorder(),
          backgroundColor: Colors.black,
          foregroundColor: Colors.yellow,
          child: Icon(Icons.home_filled),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 140, 129, 95),
        shape: CircularNotchedRectangle(),
        notchMargin: 3.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.place),
                    Text(
                      'Destinasi',
                      style: TextStyle(fontSize: 11, color: Colors.white)
                    ),
                  ],
                ),
                color: _selectedIndex == 1 ? Colors.yellow : Colors.white,
                onPressed: () {
                  _onItemTapped(1);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.explore),
                    Text(
                      'Wisata',
                      style: TextStyle(fontSize: 11, color: Colors.white)
                    ),
                  ],
                ),
                color: _selectedIndex == 2 ? Colors.yellow : Colors.white,
                onPressed: () {
                  _onItemTapped(2);
                },
              ),
            ),
            Spacer(),
            Expanded(
              child: IconButton(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.article),
                    Text(
                      'Berita',
                      style: TextStyle(fontSize: 11, color: Colors.white)
                    ),
                  ],
                ),
                color: _selectedIndex == 3 ? Colors.yellow : Colors.white,
                onPressed: () {
                  _onItemTapped(3);
                },
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.account_circle),
                    Text(
                      'Akun',
                      style: TextStyle(fontSize: 11, color: Colors.white)
                    ),
                  ],
                ),
                color: _selectedIndex == 4 ? Colors.yellow : Colors.white,
                onPressed: () {
                  _onItemTapped(4);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

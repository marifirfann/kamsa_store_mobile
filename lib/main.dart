import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart'; // Import flashy_tab_bar2
import 'package:kamsa_store/app/modules/katalog/views/katalog_view.dart';
import 'package:kamsa_store/app/modules/pelatihan/views/pelatihan_view.dart';
import 'package:kamsa_store/app/modules/profile/views/profile_view.dart';
import 'package:kamsa_store/app/modules/loading_screen/views/loading_screen_view.dart'; // Import file LoadingScreen

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Katalog Produk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadingScreenView(), 
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    KatalogView(),
    PelatihanView(),
    ProfileView(),
    Container(
      color: Colors.blueAccent,
      child: Center(child: Text('Page 2', style: TextStyle(fontSize: 24))),
    ),
    Container(
      color: Colors.white,
      child: Center(child: Text('Page 3', style: TextStyle(fontSize: 24))),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.store),
            title: Text("Katalog"),
            activeColor: Color(0xFF222222), // Active icon color
            inactiveColor: Colors.grey, // Inactive icon color
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.library_books),
            title: Text("Pelatihan"),
            activeColor: Color(0xFF222222),
            inactiveColor: Colors.grey,
          ),
          FlashyTabBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Account"),
            activeColor: Color(0xFF222222),
            inactiveColor: Colors.grey,
          ),
        ],
        animationDuration: Duration(milliseconds: 300),
        showElevation: true,
        backgroundColor: Colors.white, // Background color of the tab bar
      ),
    );
  }
}

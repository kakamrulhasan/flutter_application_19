import 'package:flutter/material.dart';
import 'package:flutter_application_19/card_details.dart';

import 'favourite_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int currentIndex = 0;

  List screens = [
    HomeScreen(),
    const FavouriteScreen(),
    const ProfileScreen(),
  ];
  
  

  @override
  Widget build(BuildContext context)=> MaterialApp(
    
    
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'E- Commerce Shop',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  CardDetails()));
                },
                icon: const Icon(Icons.add_shopping_cart,
                color: Colors.white,),
                
                )
          ],
          backgroundColor: Colors.red[900],
        ),
        
        body: screens[currentIndex],
        
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            selectedItemColor: Colors.red[900],
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                  label: 'Favorite', icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile')
            ]),
      ),
    );
}

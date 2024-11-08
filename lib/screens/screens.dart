import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shopping_app/screens/cart_screen.dart';
import 'package:shopping_app/screens/home_screen.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {

  int _selectedIndex = 0;
  static final  List<Widget> _widgetOptions = <Widget>[
   const  HomeScreen(),
    CartScreen(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar:  Container(
        decoration:  BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1)
            )
          ]
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              //rippleColor: Colors.black,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              duration: const Duration(microseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              color: Colors.black,
              tabs: const [
                GButton(icon: LineIcons.home,text:"Home"),
                GButton(icon: LineIcons.shoppingBag,text:"Cart"),
                GButton(icon: LineIcons.heart,text:"Wishlist"),
                GButton(icon: LineIcons.user,text:"Account"),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                   _selectedIndex = index;
                   
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
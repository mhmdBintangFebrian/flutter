
import 'package:flutter_ass/pages/cart.dart';
import 'package:flutter_ass/pages/chekout.dart';
import 'package:flutter_ass/pages/profile2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ass/widgets/appbar.dart';
import 'package:flutter_ass/widgets/inputappbar.dart';
import 'package:flutter_ass/widgets/menu.dart';
import 'package:flutter_ass/widgets/profile.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    menu(),
    
  ];
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      // Check the index and navigate to a new page
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  Checkout()),
        );
      }
       if (index == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  CartScreen()),
        );
   }
});
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          appbar(),
          categories(),
          Padding(padding: EdgeInsets.only(top: 5, left: 10),
          child: Text("All Food",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
          ),
          menu(),
        
          ]),
          bottomNavigationBar: BottomNavigationBar(
            
      type: BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_outlined),
            label: 'Add Item',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        onTap: _onItemTapped,
        ),
      );
  }
}

import 'package:flutter_ass/widgets/cartappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ass/widgets/list.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          cartbar(),

          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(146, 236, 227, 227),
              
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
            ),
            child: Column(
              children: [
               cartlist()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
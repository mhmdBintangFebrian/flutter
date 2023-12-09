import 'package:flutter/material.dart';

class checkoutappbar extends StatelessWidget {
  const checkoutappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 254, 254),
      child: Padding(padding: EdgeInsets.symmetric(
        vertical: 15, 
        horizontal: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),
                    child: Icon(Icons.arrow_back,
                    size: 30.0,),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 120),
                  child: Container(
                    margin: EdgeInsets.only(right: 50),
                    child: Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: 29, fontWeight: FontWeight.bold, color: Colors.blue,
                    ),
                  ),
                  )
                  ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]
                    ),
                    child: Icon(Icons.star_border_outlined,
                    size: 30.0,),
                  ),
                ),
          
          ]),
        ),
    );
  }
}
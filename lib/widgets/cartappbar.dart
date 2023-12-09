import 'package:flutter/material.dart';

class cartbar extends StatelessWidget {
  const cartbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
                  padding: EdgeInsets.only(right: 90),
                  child: Container(
                    margin: EdgeInsets.only(right: 40),
                    child: Text(
                    "Whislist",
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
                    child: Icon(Icons.person_2_outlined,
                    size: 30.0,),
                  ),
                ),
          ]),
        ),
    );
  }
}
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}
List<String> imagemenu = [
  "images/burger.png",
  "images/kentang.png",
  "images/teh.png",
  "images/burger.png",
  "images/burger.png",
  "images/burger.png",
];
List<String> namamenu = [
  "Burger beef",
  "French Fries",
  "Teh Botol",
  "Burger beef Medium",
  "Burger beef Large + Cheese",
  "Burger beef Whooper jumbo",
];
List<String> hargamenu = [
  "Rp 24.000",
  "Rp 7.000",
  "Rp 12.000",
  "Rp 34.000",
  "Rp 38.000",
  "Rp 45.000",
];

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500, // Set a fixed height for the GridView
      child: GridView.count(
        crossAxisCount: 2,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 0.78,
        children: List.generate(6, (index) {
          return Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "singleItemPage");
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset(imagemenu[index],),
                    width: double.infinity,
                    height: 120, // Adjust height as needed for InkWell
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        namamenu[index],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      hargamenu[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 16,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
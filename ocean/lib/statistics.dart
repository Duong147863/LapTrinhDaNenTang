import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        Column(
          children: [
            Container(
              width: 100,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: Colors.blueAccent
                ),
              ),
              child: const Text("12", style: TextStyle(fontSize: 20),)
              
            ),
            const Text("Sản phẩm đã thích", style: TextStyle(fontSize: 15),),
          ],
        ),

        Column(
          children: [
            Container(
              width: 100,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: Colors.blueAccent
                ),
              ),
              child: const Text("12", style: TextStyle(fontSize: 20),)
              
            ),
            const Text("Sản phẩm đã mua", style: TextStyle(fontSize: 15),),
          ],
        ),

        Column(
          children: [
            Container(
              width: 100,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: Colors.blueAccent
                ),
              ),
              child: const Text("12", style: TextStyle(fontSize: 20),)
              
            ),
            const Text("Sản đơn thành công", style: TextStyle(fontSize: 15),),
          ],
        ),
      ],
    );
  }
}
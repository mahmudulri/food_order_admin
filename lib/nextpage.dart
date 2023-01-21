import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {
  String address;
  Widget foods;

  Nextpage({
    super.key,
    required this.address,
    required this.foods,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 400,
              color: Colors.amber,
              child: Text(address),
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.green,
              child: foods,
            ),
          ],
        ),
      ),
    );
  }
}

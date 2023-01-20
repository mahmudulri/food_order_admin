import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  String foods;

  Detailspage({
    super.key,
    required this.foods,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 400,
            width: 400,
            color: Colors.amber,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Text(foods);
              },
            )),
      ),
    );
  }
}

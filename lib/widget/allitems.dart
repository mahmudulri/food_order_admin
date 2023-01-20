import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Allitems extends StatelessWidget {
  Allitems({super.key});

  final itemsref = FirebaseDatabase.instance.ref("Foods");

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: itemsref.onValue,
      builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        } else {
          Map<dynamic, dynamic> itemsmap =
              snapshot.data!.snapshot.value as dynamic;
          List<dynamic> itemslist = [];
          itemslist.clear();
          itemslist = itemsmap.values.toList();

          return Text(
            itemslist.length.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          );
        }
      },
    );
  }
}

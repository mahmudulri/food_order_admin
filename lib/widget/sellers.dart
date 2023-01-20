import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class SellersPage extends StatelessWidget {
  SellersPage({super.key});

  final ref = FirebaseDatabase.instance.ref("User");

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ref.onValue,
      builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        } else {
          Map<dynamic, dynamic> sellermap =
              snapshot.data!.snapshot.value as dynamic;
          List<dynamic> userlist = [];
          userlist.clear();
          userlist = sellermap.values.toList();

          return Text(
            userlist.length.toString(),
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

import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:food_order_admin/detailspage.dart';

class FoodsPage extends StatelessWidget {
  FoodsPage({super.key});

  final foodref = FirebaseDatabase.instance.ref("Requests");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: foodref.onValue,
        builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          } else {
            Map<dynamic, dynamic> foodsmap =
                snapshot.data!.snapshot.value as dynamic;
            List<dynamic> foodslist = [];
            foodslist.clear();
            foodslist = foodsmap.values.toList();

            return Row(
              children: [
                Expanded(
                  child: Container(
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemCount: snapshot.data!.snapshot.children.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(foodslist[index]["address"].toString()),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 200,
                              width: 400,
                              color: Colors.purple,
                              child: ListView.builder(
                                itemCount: foodslist[index]["foods"].length,
                                itemBuilder: (context, foodindex) {
                                  return Text(foodslist[index]["foods"]
                                          [foodindex]["price"]
                                      .toString());
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}

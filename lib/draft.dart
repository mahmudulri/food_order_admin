import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:food_order_admin/detailspage.dart';
import 'package:food_order_admin/widget/allitems.dart';
import 'package:food_order_admin/widget/categories.dart';
import 'package:food_order_admin/widget/sellers.dart';

class DraftPage extends StatelessWidget {
  DraftPage({super.key});

  final ref = FirebaseDatabase.instance.ref("Requests");

  //  var _index = FirebaseDatabase.instance.re

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      body: StreamBuilder(
        stream: ref.onValue,
        builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            Map<dynamic, dynamic> map =
                snapshot.data!.snapshot.value as dynamic;
            List<dynamic> list = [];
            list.clear();
            list = map.values.toList();

            return Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black87,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        right: 10,
                        left: 10,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: screenWidht,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Dashboard",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.025,
                          ),
                          Container(
                            height: 50,
                            width: screenWidht,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Setting",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.025,
                          ),
                          Container(
                            height: 50,
                            width: screenWidht,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Support",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 50,
                            width: screenWidht,
                            decoration: BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Log Out",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.logout,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Lihan Enterprise",
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Radhanagor Bazar, Sreepur , Magura - 01701987948",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xff1abc9c),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.shopping_bag,
                                                  size: 25,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Total Orders",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              list.length.toString(),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xff34495e),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.person,
                                                  size: 25,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Total Sellers",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SellersPage(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xff3498db),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.category,
                                                  size: 25,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Total Categories",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Categories(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffe74c3c),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.menu,
                                                  size: 25,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  "Total Items",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Allitems(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(flex: 1, child: Text("Serial No")),
                                Expanded(flex: 1, child: Text("Shop Name")),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Ordered By"),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Date"),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Amount"),
                                      ],
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text("Details/Print"),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 5,
                              );
                            },
                            itemCount: snapshot.data!.snapshot.children.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 10,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.black,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    index.toString(),
                                                    style: TextStyle(
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Text(list[index]["address"]
                                                .toString())),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(list[index]["name"]
                                                  .toString()),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(list[index]["currentDate"]
                                                  .toString()),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(list[index]["total"]
                                                  .toString()),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Detailspage(
                                                        address: list[index]
                                                            ["address"],
                                                        myfoods: mynewMethod(
                                                            list, index),
                                                        orderBy: list[index]
                                                            ["name"],
                                                        orderdate: list[index]
                                                            ["currentDate"],
                                                        subtotal: list[index]
                                                            ["total"],
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Color(0xff27ae60)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12.0),
                                                      child: Text(
                                                        "Details",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Color(0xff27ae60)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              12.0),
                                                      child: Text(
                                                        "Print",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Container mynewMethod(List<dynamic> list, int index) {
    return Container(
      height: 300,
      // width: 60,
      // color: Colors.black38,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 1,
            color: Colors.black,
          );
        },
        itemCount: list[index]["foods"].length,
        itemBuilder: (context, foodindex) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    list[index]["foods"].length.toString(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(list[index]["foods"][foodindex]["productName"]
                          .toString()),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    list[index]["foods"][foodindex]["free"].toString(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    list[index]["foods"][foodindex]["price"].toString(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        list[index]["foods"][foodindex]["quantity"].toString(),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        list[index]["foods"][foodindex]["qntType"].toString(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

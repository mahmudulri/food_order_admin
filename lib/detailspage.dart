import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  String address;
  String orderdate;
  String orderBy;
  Widget myfoods;
  String subtotal;

  Detailspage({
    super.key,
    required this.address,
    required this.myfoods,
    required this.orderdate,
    required this.orderBy,
    required this.subtotal,
  });

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: screenWidht,
          height: screenHeight,
          color: Colors.white,
          child: Column(
            children: [
              Text(
                "Ligan Enterprise",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                "Radhanagor Bazar, Sreepur, Magura",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                "phone : 01701987948 , 01986072587",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Order Details",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      "Customer Details : ",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      address,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Order Date : ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              orderdate,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Order By : ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              orderBy,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Container(
                  height: 50,
                  width: screenWidht,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(flex: 1, child: Text("SL : ")),
                        Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Items Desc."),
                              ],
                            )),
                        Expanded(flex: 1, child: Text("Free")),
                        Expanded(flex: 1, child: Text("Price")),
                        Expanded(flex: 1, child: Text("Qnt")),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: myfoods,
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Text("")),
                  Expanded(flex: 1, child: Text("")),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sub Total : $subtotal tk",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                  Expanded(flex: 1, child: Text("")),
                ],
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "Signature:  ...........",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

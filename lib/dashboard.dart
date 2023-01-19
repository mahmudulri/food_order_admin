import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        "45",
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
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                      Text(
                                        "08",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
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
                                  color: Color(0xff3498db),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                      Text(
                                        "06",
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
                                  color: Color(0xffe74c3c),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                      Text(
                                        "140",
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
                        ],
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.green,
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                      color: Colors.white10,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    // width: 1,

                                    color: Colors.grey,
                                  )),
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Serial No"),
                                    Text("Shop Name"),
                                    Text("Ordered By/Seller Name"),
                                    Text("Details/Print"),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.blueGrey,
                                child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemCount: 30,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff2c3e50),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Text(
                                                  index.toString(),
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )),
                                          Text("Kader Store, Radhanagor bazar"),
                                          Text("shumon"),
                                          Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0xff27ae60)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Text(
                                                  "Details",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

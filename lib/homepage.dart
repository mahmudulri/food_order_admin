import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:food_order_admin/dashboard.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidht = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: ArrowClipper(70, 80, Edge.BOTTOM),
              child: Container(
                height: 100,
                color: Colors.white24,
                child: Center(
                  child: Text(
                    "Aftab Enterprise",
                    style: TextStyle(
                      fontSize: screenWidht * 0.040,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.020,
            ),
            Text(
              "Explore Your Business",
              style: TextStyle(
                fontSize: screenWidht * 0.020,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.020,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white30,
              ),
              height: screenHeight * 0.40,
              width: screenWidht * 0.20,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.9),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.password_sharp,
                            color: Colors.black,
                          ),
                          hintText: "Enter password",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) => DashBoard()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "Go",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_order_admin/dashboard.dart';
import 'package:food_order_admin/draft.dart';
import 'package:food_order_admin/homepage.dart';
import 'package:food_order_admin/widget/foods.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDz0A3DQ5DAy23IzqDvYqoa_iIZiB_qObM",
      appId: "1:821514093968:web:09816c2ba4dab030459f15",
      authDomain: "hasan-vai-application.firebaseapp.com",
      databaseURL: "https://hasan-vai-application.firebaseio.com",
      messagingSenderId: "821514093968",
      projectId: "hasan-vai-application",
    ),
  );
  // if (Firebase.apps.isEmpty) {
  //   await Firebase.initializeApp(
  //     // name: "hasannotebook",
  //     options: FirebaseOptions(
  //       apiKey: "AIzaSyDz0A3DQ5DAy23IzqDvYqoa_iIZiB_qObM",
  //       appId: "1:821514093968:web:09816c2ba4dab030459f15",
  //       messagingSenderId: "821514093968",
  //       projectId: "hasan-vai-application",
  //     ),
  //   );
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: DraftPage());
  }
}

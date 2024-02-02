import 'package:bms/users/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bearer Request Management System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
          primarySwatch: Colors.green),
      home: FutureBuilder(
        builder: (context, dataSnapShot) {
          return LoginScreen();
        },
        future: null,
      ),
    );
  }
}

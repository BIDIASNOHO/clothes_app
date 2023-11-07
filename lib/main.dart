import 'package:clothes_app/Users/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fasion app',
      theme: ThemeData(
       primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: FutureBuilder(builder: (context, dataSnapShot) {
        return LoginScreen();
      }),
    );
  }
}

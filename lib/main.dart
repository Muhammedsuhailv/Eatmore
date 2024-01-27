import 'package:canteenmanagement/admin/adminsignup.dart';
import 'package:canteenmanagement/admin/adminsplashscreen.dart';
import 'package:canteenmanagement/admin/logout.dart';
import 'package:canteenmanagement/user/signup%20or%20signin.dart';
import 'package:canteenmanagement/user/usersplashscreen.dart';
import 'package:canteenmanagement/user0radmin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart'; // Import this package

void main() async {
  
  await initializeDateFormatting('en_IN'); // Initialize the locale data
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // routes: {'//': (context) => UserSplash(), '/': (context) => SignupPage()},
      // initialRoute: '//',
      home: UserorAdmin(),
    );
  }
}

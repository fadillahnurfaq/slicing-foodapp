import 'package:flutter/material.dart';
import 'package:slicing_foodapp/utils/state_util.dart';
import 'package:slicing_foodapp/views/main_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffE5E5E5),
      ),
      home: const MainNavigation(),
    );
  }
}

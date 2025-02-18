import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_cart/Models/cart.dart';

import 'Pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_)=> Cart(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shopping Cart App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const IntroPage(),
      ),
    );
  }
}

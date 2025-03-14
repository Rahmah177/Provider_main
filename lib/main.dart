import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider.dart';
import 'package:statemanagement/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartProvider>(
      create: (BuildContext context) => CartProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignUp(),
      ),
    );
  }
}

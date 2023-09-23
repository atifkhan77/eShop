import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/HomeScreens.dart';
import 'package:flutter_application_1/Screens/productDetail.dart';
import './providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ProductProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.purple,
          secondaryHeaderColor: Colors.orange,
        ),
        home: const HomeScreen(),
        routes: {ProductDetail.routeName: (context) => ProductDetail()},
      ),
    );
  }
}

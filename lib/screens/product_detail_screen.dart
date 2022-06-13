// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // ProductDetailScreen({required this.title});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final RouteArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final productId = RouteArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Center(
        child: Text('title'),
      ),
    );
  }
}

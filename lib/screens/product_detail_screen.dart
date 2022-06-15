// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // ProductDetailScreen({required this.title});

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    // final RouteArgs = ModalRoute.of(context)!.settings.arguments as String;
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    // final productId = RouteArgs['id'];
    final loadedProducts =
        Provider.of<Products>(context, listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProducts.title),
      ),
      body: Center(
        child: Text('title'),
      ),
    );
  }
}

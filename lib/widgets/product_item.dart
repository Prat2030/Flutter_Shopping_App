import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem({required this.id, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(imageUrl, fit: BoxFit.cover),
      footer: GridTileBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(title),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}

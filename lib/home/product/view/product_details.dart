import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(child: TextButton(onPressed: () {
          
        }, child: Text('products'))),
      ),
    );
  }
}
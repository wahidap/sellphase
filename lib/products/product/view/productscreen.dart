import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sellphase/products/addproduct/view/add_product.dart';
import 'package:sellphase/products/product_card/view/product_card.dart';



class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
          Get.to(()=>const AddProduct());
        },
      child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Center(child: Text('products')),
        automaticallyImplyLeading: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast,
          ),
          child: ProductCard(),
        ),
      ),
      
    );
  }
}
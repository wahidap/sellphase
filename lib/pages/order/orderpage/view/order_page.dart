import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Orders',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
          
        ),),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(7, 57, 109, 100),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text('blah'),
            color: Color.fromRGBO(7, 57, 109,100),
          ),
        ),
      ),
    );
  }
}

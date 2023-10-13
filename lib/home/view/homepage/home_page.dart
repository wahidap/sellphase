import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sellphase/home/product/view/product_details.dart';
import 'package:sellphase/products/product_card/view/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Home',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Color.fromRGBO(7, 57, 109, 100),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    color: Color.fromRGBO(7, 57, 109, 100),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Products",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    color: Color.fromRGBO(7, 57, 109, 100),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "purchase",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    color: Color.fromRGBO(7, 57, 109, 100),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add product",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    color: Color.fromRGBO(7, 57, 109, 100),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Stock",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Row(
              //   children: [
              //     Container(
              //       width: 180,
              //       height: 200,
              //       color: Color.fromRGBO(7, 57, 109, 100),
              //       child: Text("card 3"),
              //     ),
              //     Container(
              //       width: 180,
              //       height: 200,
              //       color: Color.fromRGBO(7, 57, 109, 100),
              //       child: Text("card 4"),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

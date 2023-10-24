import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sellphase/products/product/view/productscreen.dart';

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
                    child: TextButton(
                      onPressed: () {
                        // Navigate to the product screen
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return ProductScreen();
                          },
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons
                                .medical_services_rounded, // Replace with the desired icon
                            size: 30,
                          ),
                          SizedBox(
                              width:
                                  8), // Add some space between the icon and the text
                          Text(
                            'Products',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    color: Color.fromRGBO(
                        7, 57, 109, 1.0), // Make sure the opacity is set to 1.0
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the contents horizontally
                        children: [
                          Icon(
                            Icons
                                .shopping_cart, // Replace with the desired icon
                            size: 30, // Adjust the size as needed
                          ),
                          SizedBox(
                              width:
                                  8), // Add some space between the icon and the text
                          Text(
                            'Purchase',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    color: Color.fromRGBO(7, 57, 109, 1.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_outlined),
                            // SizedBox(width: 4,),

                            Text(
                              "Add products",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    width: 180,
                    height: 200,
                    // color: Color.fromRGBO(7, 57, 109, 100),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shelves),
                            SizedBox(width: 8),
                            Text(
                              "Stock",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   children: [
              //     Container(
              //       width: 180,
              //       height: 200,
              //       // color: Color.fromRGBO(7, 57, 109, 100),
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

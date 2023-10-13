import 'package:flutter/material.dart';
import 'package:sellphase/home/home_page.dart';
import 'package:sellphase/pages/order/orderpage/view/order_page.dart';



class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage>
with SingleTickerProviderStateMixin
 {
  late TabController _tabController;
  @override
void initState() {
  super.initState();
  _tabController = TabController(length: 3, vsync: this);

  
}
@override
  void dispose() {
    _tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color.fromRGBO(7, 57, 109,100),
          child: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 10),
          controller: _tabController,
          labelPadding: EdgeInsets.symmetric(horizontal: 8),
          unselectedLabelStyle: TextStyle(fontSize: 10),
          
            tabs: [
            Tab(
              
              icon: Icon(Icons.home_filled),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.shopping_bag_sharp),
              text: 'Orders',
            ),
          ]), 
          
        ),
        
        body: TabBarView(
          controller: _tabController,
          children: [
          HomePage(),
           OrderPage(),
          
         
        ]),
      
    );
  }
}
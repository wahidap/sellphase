import 'package:flutter/material.dart';



class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      theme: ThemeData(
      ),
      home: CartPage(),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class CartItem {
  final Product product;
  int quantity;

  CartItem(this.product, this.quantity);
}

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> cartItems = [];

  double calculateTotal() {
    double total = 0;
    for (var cartItem in cartItems) {
      total += cartItem.product.price * cartItem.quantity;
    }
    return total;
  }

  void addToCart(Product product) {
    bool itemExists = false;
    for (var cartItem in cartItems) {
      if (cartItem.product.name == product.name) {
        setState(() {
          cartItem.quantity++;
        });
        itemExists = true;
        break;
      }
    }
    if (!itemExists) {
      setState(() {
        cartItems.add(CartItem(product, 1));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].product.name),
            subtitle: Text('\$${cartItems[index].product.price.toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (cartItems[index].quantity > 1) {
                        cartItems[index].quantity--;
                      } else {
                        cartItems.removeAt(index);
                      }
                    });
                  },
                ),
                Text(cartItems[index].quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      cartItems[index].quantity++;
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total: \$${calculateTotal().toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: () {
                // Implement your checkout logic here
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';


class CartPage extends StatelessWidget {
  final List<MenuItem> cartItems;

  const CartPage({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(cartItems[index].image),
            ),
            title: Text(cartItems[index].name),
          );
        },
      ),
    );
  }
}
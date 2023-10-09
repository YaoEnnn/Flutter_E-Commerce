import 'package:e_commerce/components/cart_item.dart';
import 'package:e_commerce/models/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const Text('My Cart', style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),

          const SizedBox(height: 10),

          Expanded(child: ListView.builder(itemBuilder: (context, index){
            //get individual shoe
            Shoe individualShoe = value.getUserCart()[index];
            //return cart item
            return CartItem(shoe: individualShoe);
          },
            itemCount: value.getUserCart().length,
          )
        )
        ],
      ),
    ),
    );
  }
}
import 'package:e_commerce/models/cart.dart';
import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget{
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    void removeItemFromCart(){
      Provider.of<Cart>(context, listen: false).removeShoeFromCart(shoe);
    }

    return Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: const Color(0x90d9d9d9),
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        leading: Image.asset(shoe.imagePath, width: 100, height: 100,),
        title: Text(shoe.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        subtitle: Text('\$${shoe.price}', style: const TextStyle(fontWeight: FontWeight.bold),),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline_outlined, size: 30,),
          color: Colors.grey,
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }

}
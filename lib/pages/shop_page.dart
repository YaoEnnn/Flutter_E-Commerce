import 'package:e_commerce/components/shoe_tile.dart';
import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';


class ShopPage extends StatelessWidget{
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    void addShoeToCart(Shoe shoe){
      Provider.of<Cart>(context, listen: false).addShoeToCart(shoe);
      showDialog(context: context, builder: (context) => const AlertDialog(
        title: Text('Successfully Added!'),
        content: Text('Check your cart'),
      ));
    }

    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 15,
                      offset: Offset(0, 5)
                  )
                ]
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('Search',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey
                    ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 30,),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(30),
          child: Text('Everyone flies... some fly longer than others',
            style: TextStyle(
              color: Color(0xffa1a1a1),
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('Hot Picks 🔥',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text('See all',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                ),),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index){
            Shoe shoe = value.getShoeList()[index];
            return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe));
          },
            itemCount: 4,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25, right: 25, top: 5),
          child: Divider(
            color: Color(0xffececec),
            height: 70,
            thickness: 2,),
        )
      ],
    ), );
  }
}
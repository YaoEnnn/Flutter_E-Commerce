import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier {
  //list shoes from store
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: 234,
        description:
            'The forward-thinking design of his latest signature shoe.',
        imagePath: 'lib/image/Shoes1.png'),
    Shoe(
        name: 'Air Jordans',
        price: 221,
        description:
        'The forward-thinking design of his latest signature shoe.',
        imagePath: 'lib/image/Shoes2.jpg'),
    Shoe(
        name: 'Kyrie 6',
        price: 189,
        description:
        'The forward-thinking design of his latest signature shoe.',
        imagePath: 'lib/image/Shoes3.png'),
    Shoe(
        name: 'KD Treys',
        price: 176,
        description:
        'The forward-thinking design of his latest signature shoe.',
        imagePath: 'lib/image/Shoes4.png'),
  ];

  //list shoes from user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get list of user cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add shoe to cart
  void addShoeToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove shoe from cart
  void removeShoeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}

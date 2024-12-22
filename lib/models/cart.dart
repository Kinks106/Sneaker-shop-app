import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier{


  //list of shoes for sale
  List<Shoe> shoeShop=[
    Shoe(name: 'Adidas',
     price: '69999',
      imagePath: 'lib/images/adidas.jpg',
       description: 'Very comfy'
       ),
    Shoe(name: 'Nike Air',
     price: '69999',
      imagePath: 'lib/images/nike_air.jpeg',
       description: 'Very comfy'
       ),
    Shoe(name: 'Nike Dunk',
      price: '69999',
        imagePath: 'lib/images/nike_dunk.jpeg',
       description: 'Very comfy'
       ),
       Shoe(
        name: "Air Jordan",
        price:'69000',
        description: 'Cool Shoes',
        imagePath:'lib/images/air_jordan.jpeg' ),
    ];

  //list of itemms in user crat

  List<Shoe>userCart=[];

  //get list of shoe for ssale
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //get cart
  List<Shoe> getUserCart()
  {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe)
  {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe)
  {
    userCart.remove(shoe);
    notifyListeners();
  }

}
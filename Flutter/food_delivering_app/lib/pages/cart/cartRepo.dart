

import 'package:food_delivering_app/pages/cart/items.dart';

class CartRepo {
  List<Item> getAllCartItems() {
    return [
      Item(
          "kumars grocery",
          "fruits",
          "https://cdn.pixabay.com/photo/2016/04/13/07/18/blueberry-1326154_960_720.jpg",
          "70",
          "130",
          "250g",
          "blueberry (250g) ",
          "40"),
      Item(
          "rams grocery",
          "decoration",
          "https://cdn.pixabay.com/photo/2017/08/07/22/39/still-2608704_960_720.jpg",
          "50",
          "100",
          "1 pot",
          "flowers (1 pot)",
          "30"),
      Item(
          "kumars grocery",
          "fruits",
          "https://cdn.pixabay.com/photo/2015/03/30/12/43/bananas-698608_960_720.jpg",
          "30",
          "80",
          "250g",
          "bananas (250g)",
          "60")
    ];
  }
}
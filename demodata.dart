import 'controllers.dart';
import 'models.dart';


  List<Map<String, dynamic>> products = [
    {
      'productName' : 'Apple',
      'productPrices' : 200,
      'productQuantity' : 5
    },
    {
      'productName' : 'Mango',
      'productPrices' : 300,
      'productQuantity' : 10
    },
    {
      'productName' : 'Orange',
      'productPrices' : 350,
      'productQuantity' : 7
    },
    {
      'productName' : 'Bannana',
      'productPrices' : 150,
      'productQuantity' : 9
    },
  ];

  List<Map<String, dynamic>> userData = [
    {
      'name' : 'Ahmed',
      'email' : 'ahmed.com'
    },
    {
      'name' : 'Masoud',
      'email' : 'masoud.com'
    },
  ];


  void main() {

    MainController mainController = MainController();

    List<Products> productss = mainController.createListOfProductObj(products);

    for(Products i in productss) {
      print('Name ${i.productName} Price ${i.productPrice}');
    }

    mainController.addFav(productss[0], 'Bassel', 1);
    mainController.addFav(productss[1], 'Bassel Allam', 2);

    mainController.removeFav(productss[1]);

    print(mainController.allFav);
  }
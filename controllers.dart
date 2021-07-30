import 'models.dart';


class ProductController{


  Products createProductObject(Map<String, dynamic> product) {

    Products _newProduct = Products.fromJson(product);
    return _newProduct;
  }


  List<Products> createListOfProductObj(List<Map<String, dynamic>> products) {

    List<Products> _allNewProducts = [];

    products.forEach((i) {
      Products _newProduct = createProductObject(i);
      _allNewProducts.add(_newProduct);
    });

    return _allNewProducts;
  }
}



class FavController{

  List<Products> _allFav = [];
  List<Products> get allFav => _allFav;
  
  addFav(Products product, String userName, int id) {

    product.isFav = true;

    _allFav.add(product);
  }

  removeFav(Products product) {

    product.isFav = false;

    _allFav.remove(product);
  }
}
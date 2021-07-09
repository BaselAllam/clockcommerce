

class User{

  String? name;
  String? email;

  User(this.name, this.email);

  factory User.fromJson(Map<String, dynamic> i) {
    return User(
      i['name'], i['email']
    );
  }

}


class Products{

  String? productName;
  int? productPrice;
  int? productQuantity;
  // int _discount = 10;
  // int get discount => _discount;

  // setDiscount(int newDis) {
  //   return _discount = newDis;
  // }

  Products(this.productName, productPrice, this.productQuantity);

  factory Products.fromJson(Map<String, dynamic> i) {
    return Products(
      i['productName'], i['productPrices'], i['productQuantity']
    );
  }
}


class Fav{

  int? favId;
  Products? product;
  String? userName;

  Fav(this.favId, this.product, this.userName);

  factory Fav.fromJson(Map<String, dynamic> i) {
    return Fav(
      i['favId'],
      Products.fromJson(i),
      i['userName']
    );
  }
}

void main() {

  List<Map<String, dynamic>> favData = [
    {
      'favId' : 1,
      'productData' : {
        'productName' : 'Apple',
        'productPrices' : 200,
        'productQuantity' : 5
      },
      'userName' : 'ahmed'
    },
    {
      'favId' : 2,
      'productData' : {
        'productName' : 'Mango',
        'productPrices' : 300,
        'productQuantity' : 10
      },
      'userName' : 'masoud'
    },
  ];

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

  List<Products> allProducts = [];

  List<User> allUsers = [];

  List<Fav> allFavs = [];

  for(Map<String, dynamic> i in favData) {

    Fav newFav = Fav.fromJson(i);
    allFavs.add(newFav);
  }

  for(Map<String, dynamic> i in userData){

    User newObj = User.fromJson(i);
    allUsers.add(newObj);
  }

  for(Map<String, dynamic> i in products){

    Products newObj = Products.fromJson(i);
    allProducts.add(newObj);
  }

  print(allProducts);
  print(allUsers);
  print(allFavs);

}
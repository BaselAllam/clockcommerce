

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
  bool? isFav;

  Products(this.productName, this.productPrice, this.productQuantity, this.isFav);

  factory Products.fromJson(Map<String, dynamic> i) {
    return Products(
      i['productName'], i['productPrices'], i['productQuantity'], false,
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
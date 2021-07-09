



Map<String, dynamic> orgainzeProduct(String userName, List<Map<String, dynamic>> listToGetLenght, Map<String, dynamic> productData) {

  int newFavId = autoFavIdGenerator(listToGetLenght);

  Map<String, dynamic> organizedProduct = {
    'favId' : newFavId,
    'productData' : productData,
    'userName' : userName
  };
  
  return organizedProduct;
  
}

addProductToList(List<Map<String, dynamic>> listToAddTo, String userName, Map<String, dynamic> productData) {

  Map<String, dynamic> product = orgainzeProduct(userName, listToAddTo, productData);

  listToAddTo.add(product);
}

removeProductFromList(List<Map<String, dynamic>> listToRemoveFrom, int favId) {

  for(int i = 0; i < listToRemoveFrom.length; i++){
    if(listToRemoveFrom[i]['favId'] == favId){
      listToRemoveFrom.removeAt(i);
    }
  }

  // for(Map i in listToRemoveFrom){
  //   if(i['favId'] == favId){
  //     listToRemoveFrom.remove(i);
  //   }
  // }
}


int autoFavIdGenerator(List listToGetLength) {

  int favId = listToGetLength.length + 1;

  return favId;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


void main() {

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


List<Map<String, dynamic>> products = [
  {
    'productName' : 'Apple',
    'productPrice' : 200,
    'productQuantity' : 5
  },
  {
    'productName' : 'Mango',
    'productPrice' : 300,
    'productQuantity' : 10
  },
];


List<Map<String, dynamic>> favData = [
  {
    'favId' : 1,
    'productData' : {
      'productName' : 'Apple',
      'productPrice' : 200,
      'productQuantity' : 5
    },
    'userName' : 'ahmed'
  },
  {
    'favId' : 2,
    'productData' : {
      'productName' : 'Mango',
      'productPrice' : 300,
      'productQuantity' : 10
    },
    'userName' : 'masoud'
  },
];


List<Map<String, dynamic>> shoppingData = [
  {
    'shopData' : {
      'id' : 1,
      'qty' : 2
    },
    'productData' : {
      'productName' : 'Apple',
      'productPrice' : 200,
      'productQuantity' : 5
    },
    'userName' : 'ahmed'
  },
  {
   'shopData' : {
        'id' : 2,
        'qty' : 3
      },
    'productData' : {
      'productName' : 'Mango',
      'productPrice' : 300,
      'productQuantity' : 10
    },
    'userName' : 'masoud'
  }, 
];


addProductToList(favData, userData[0]['name'], products[1]);

print(favData);

removeProductFromList(favData, 1);

print(favData);

}
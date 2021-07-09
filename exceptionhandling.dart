


sum(List x) {

  try{
    double total = x.reduce((i, p) => i + p);

    print(total);
  }catch(e) {
    print(e);
  }
}


void main() {


  List x = [10, 20, '30'];

  sum(x);
}


sum(List x) {

  var total = x.reduce((i, p) => i + p);

  return total;

}


calcCoCapital(var coCapital, var percentage) {

  var coCapitalAfterPerc = coCapital * percentage / 100;

  return coCapitalAfterPerc;

}


salaryIncreament(List salaries, var incrValue) {

  List salariesAfterInc = [];


  for(var i in salaries){
    i = i + ( i * incrValue / 100 );
    salariesAfterInc.add(i);
  }

  return salariesAfterInc;
}


calSalariesInc(List salaries, var coCapital, var percentage, var newPercentage, var incValue) {

  List salariesInc = salaryIncreament(salaries, incValue);

  var sumValue = sum(salariesInc);

  var coCapitalCal = calcCoCapital(coCapital, percentage);

  if(sumValue > coCapitalCal){
    List salariesIncssss = salaryIncreament(salaries, incValue - newPercentage);
    print('im in if $salariesIncssss');
  }else{
    print('im in else $salariesInc');
  }


}



void main() {

  //List salary = [2000, 10000, 2000, 5000];

  List salary = fun();

  var perc = 25;

  var modifyPerc = 5;

  var coCapital = 10000000;

  var incValue = 10;

  calSalariesInc(salary, coCapital, perc, modifyPerc, incValue);
}


fun() {

  List x = [];
  for(int i = 0; i < 100000; i++){
    x.add(i);
  }

  return x;
}
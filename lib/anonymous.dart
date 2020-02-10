//
//class Cart {
//  Function addTwoItems = (int item1, int item2){
//    return item1 + item2;
//  };
//
//  Function updateCustomer = (String updatedCustomer)
//  => updatedCustomer;
//
//
//}
//
//Function DividingByFour(){
//  Function LetUsDivide = (int x) => x ~/ 4;
//  return LetUsDivide;
//}
//
//String message = 'any parent string';
//Function overridingParentScope = (){
//  var message = 'overriding the parent scope';
//  print(message);
//};
//
//Function show = () {
//  Function gettingImage(){
//    String path = 'this is a new path to image.';
//    print(path);
//  }
//  return gettingImage;
//};

class AboutLambdas{
  Function addingNumbers = (int a, int b){
    return a + b;
  };

  Function multiplyWithEight = (int num) {
    return num * 8;
  };

  Function showName = (String name) => name;

  int higherOrderFunction(Function myFunction){
    int a =10, b = 20;

    print(myFunction(a, b));
  }

  Function returnAFunction(){
    Function showAge = (int age) => age;
    return showAge;
  }

  String message = 'any parent string';

  Function overridingParentScope = (){
    String message = 'override the parent scope';
    print(message);
  };

  Function show = (){
    Function gettingImage(){
      String path = 'this is a new path to image.';
      print(path);
    }

    return gettingImage;
  };



}


void main(){

//  List tasks = List();
//  tasks.add((String item)=>item);
//  tasks.add((item){
//    return item;
//  });
//
//  print(tasks);

//  String path = 'this is an old path.';
//  var showing = show();
//  showing();

//  print(message);
//  overridingParentScope();

//  var dividingBy4 = DividingByFour();
//  print(dividingBy4(41));
  
  //  var cart = Cart();
//  print('total; price is:');
//  print(cart.addTwoItems(10,20));
//  print(cart.updateCustomer('the new customer'));
}
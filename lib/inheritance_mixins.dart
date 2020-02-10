//class Animal {
//  String name = 'Animal';
//  Animal(){
//    print('I am Animal class constructor.');
//  }
//  Animal.namedConstructor(){
//    print('this is parent Animal named constrcutor.');
//  }
//
//  void showName(){
//    print(this.name);
//  }
//
//  void eat(){
//    print('Animals eat everything depending on what type it is.');
//  }
//}
//
//class Cat extends Animal{
//  //overrideing parent constrcutor
//  Cat():super(){
//    print('I am child cat class overriding super Animal.');
//  }
//
//  Cat.namedCatConstructor():super.namedConstructor(){
//    print('the child cat named construictor overrrides the parent animal named constructor.');
//
//  }
//
//  @override
//  void showName(){
//    print('${this.name} from child method');
//  }
//
//  @override
//  void eat() {
//    super.eat();
//    print('Cat do not eat vegetables');
//  }
//}

class Animal {
  String name = 'Animal';
  Animal(){
    print('I am Animal class constructor.');
  }
  Animal.namedConstructor(){
    print('this is parent animal named constructor.');
  }
  void showName(){
    print(this.name);
  }
  void eat(){
    print('Animals eat everything depending on what type it is.');
  }

}

class Dog{
  void canRun(){
    print('dog mixin can run');

  }
}

class Pig{
  void canYal(){
    print('pig mixin can yal');

  }
}

class Cat extends Animal with Dog, Pig{
  Cat():super(){
    print('I am child cat class overriding super animal class.');
  }
  Cat.namedCatConstructor():super.namedConstructor(){
    print('the child cat named constructor.');
  }

  @override
  void canRun() {
    // TODO: implement canRun
    super.canRun();
    print('cat can run');
  }
}


void main(){

  var cat = Cat();

  var anotherCat = Cat.namedCatConstructor();
  anotherCat.canRun();
  anotherCat.canYal();



//var cat = Cat();
//cat.name = 'meow';
//cat.showName();
//cat.eat();

//var antoherCat = Cat.namedCatConstructor();
//antoherCat.name= 'named';
//antoherCat.showName();
//antoherCat.eat();
}
abstract class Volume{
  int age;
  void increase();
  void decrease();

  void normalFunc(){
    print(' this is a normal func');
  }

}

class SoundSystem extends Volume {
  @override
  void decrease() {
    print('Sound it down');
  }

  @override
  void increase() {
    print('sound it up');
  }

  void normalFunction(int age) {
    print('this is normal function the age is $age');
  }

}

abstract class Mammal{
  void run();
  void walk();
  void sound(){
    print('Mammals make sound.');
  }
}

class Human implements Mammal{
  @override
  void run(){
    print("I am running.");
  }
  @override
  void walk(){
    print("I am walking");
  }
  @override
  void sound(){
    print("Humans make sound");
  }

}


class Vehicle{
  void steerTheVehicle(){
    print('the vehicle is running');
  }
}

class Engine {
  final _name;
  Engine(this._name);
  String lessOilConsumption(){
    return 'it consumes less oil.';
  }
}

class Car implements Vehicle, Engine{
  @override
  var _name = null;

  @override
  String lessOilConsumption() {
    // TODO: implement lessOilConsumption
    print('this model of car consumes less oil.');
  }

  @override
  void steerTheVehicle() {
    print('the car is moving.');
  }
  
  void ridingExperience() => print('this car gives good rides');

}

class Circle{
  String name;
  static const pi = 3.14;
  static void drawACircle(){
    print(pi);
  }
  void instanceFunc(){
    Circle.drawACircle();
    print(pi);
    print('this is normal function.');
  }
}

class InputException implements Exception{
  String customException(){
    return 'the input of negative number is ';
  }
}

void inputValue(int inputNumber){
  if(inputNumber < 0){
    var inputException = InputException();
    throw inputException;
  }
}

void main(){

  try {
    inputValue(-12);
  } catch(e, s) {
    print(e.customException());
  }
  finally {
    print("The finally clause is always executed");
  }


//  try{
//    int result = 10 ~/ 0;
//  }on IntegerDivisionByZeroException{
//    print('we cannot divide by zero');
//  }
//  try{
//    int result = 10 ~/ 0;
//    print("The result is $result");
//  } catch(e, s){
//    print(e);
//  print(s);
//  }
//  try{
//    int result = 10 ~/ 0;
//    print("The result is $result");
//  } catch(e){
//    print("The exception is : $e");
//  } finally{
//    print("This is finally and it always is executed.");
//  }
  //  var circle = Circle();
//  circle.instanceFunc();
//  Circle.drawACircle();


//  var car = Car();
//  car._name = 'opel';
//  print('car name: ${car._name}');
//  car.lessOilConsumption();
//  car.steerTheVehicle();
//  car.ridingExperience();


//  var john = Human();
//  john.run();
//  john.walk();
//

//var newSystem = SoundSystem();
//newSystem.decrease();
//newSystem.increase();
//newSystem.normalFunc();
}
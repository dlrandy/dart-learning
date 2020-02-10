//
//class Car {
//  int carModel = 123;
//  String carName = 'Blue Angle';
//  bool isOn = true;
//
//  Car(){}
//
//  bool turnOn(bool on){
//    isOn = on;
//  }
//
//  bool isTurnedOn(){
//    return isOn;
//  }
//}
//
//class Bear{
//  int numOfFishs;
//  int hoursOfSleep;
//  int weightGain;

//  Bear(this.numOfFishs, this.hoursOfSleep);

//  Bear(int nums, int hours){
//    this.numOfFishs = nums;
//    this.hoursOfSleep = hours;
//  }

//  Bear(int nums, int hours){
//    numOfFishs = nums;
//    hoursOfSleep = hours;
//  }

//  Bear({int nums, int hours}){
//    numOfFishs = nums;
//    hoursOfSleep = hours;
//  }
//  int eatFish(int num) => num;
//
//  int sleepAfterEatingFish(int hours) => hours;
//
//  int weightGaining()=> weightGain = numOfFishs * hoursOfSleep;
//
//}
//
//class MyClass {
//  String name;
//  String get getName => name;
//  set setName(String val) => name = val;
//}

class Bear {
  int collarID;

  // default and parameterized constructor
  Bear(this.collarID);

  // named constructor
  Bear.firstNamedConstructor(this.collarID);

  // named constructor
  Bear.secondNamedConstructor(this.collarID);

  void trackingBear(){
    print('tracking the bear with collar ID $collarID');
  }
}


void main(){

  var bear1 = Bear(1);
  bear1.trackingBear();

  var bear2 = Bear.firstNamedConstructor(2);
  bear2.trackingBear();

  
  

//  int findTheVolume(int length, {int height = 10, int breath}){
//    return length * height * breath;
//  }
//
//  print(findTheVolume(10, breath: 10));
//

//  String defaultParameters(String name, String address, {int age = 10}){
//    return '$name and $address and age $age';
//  }
//
//  String optionalParameters(String name, String address, [int age]){
//    return '$name and $address and age $age';
//  }
//
////  print(defaultParameters("JOhn", "Jericho", age : 20));
//
//  print(optionalParameters("JOhn", "Jericho", 20));


//  var myObj = MyClass();
//  myObj.setName = 'sanjib';
//  print(myObj.getName);

//  var fatherBear = Bear(6, 10);
//  var fatherBear = Bear(nums:6, hours:10);
//  print('${fatherBear.numOfFishs} ${fatherBear.hoursOfSleep} '
//      +'${fatherBear.weightGaining()}');
//


//  Map<String, dynamic> args = {
//    'john': 'smith',
//    'chicago': 32,
//  };
//
//  var argss = {
//    'john': 'smith',
//    'chicago': 32,
//  };
//
//  bool isTure(){
//    print('is true');
////    return true;
//  }
//
//  print(isTure());
//
//  void withoutval(){
//    print('withoutval');
//  }
//  String returnString(String name) => name;

//int getReCurse(int num){
//  if (num > 1) {
//    print('in getRecurse and num is $num');
//    return num * getReCurse(num - 1);
//  }
//  return 1;
//}
//
//print(getReCurse(5));
//
//  Car newCar = Car();
//
//  newCar.carName='tesla';
//  newCar.carModel= 321;
//  newCar.turnOn(false);
//
//  if(newCar.isTurnedOn()){
//    print('${newCar.carName} starts');
//  } else {
//    print('${newCar.carName} stops');
//  };
//
//
//
//
//
//






































}
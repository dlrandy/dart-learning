import 'dart:collection';

int listFunction(){
  List<int> nameOfTest = List();
  nameOfTest.add(1);
  nameOfTest.add(2);
  nameOfTest.add(3);
  nameOfTest.add(2);

//  for(int ele in nameOfTest){
//    print(ele);
//  }


//  nameOfTest.forEach((it) => print(it));

//for(int i = 0; i < nameOfTest.length; i++){
//  print(nameOfTest[i]);
//}

//nameOfTest.remove(2);
//print(nameOfTest);


  var fibonacciNumbers = [1, 2, 3, 5, 8, 13, 21, 34];
//  print(fibonacciNumbers.take(3).toList());

  print(fibonacciNumbers.skip(5).toList());
  print(fibonacciNumbers.skip(2).contains(5));



}

void setFunction(){
  Set<String> countries = Set.from(['china', 'japan', 'america']);
  Set<int> nums = Set.from([1,2,3]);
  Set<int> moreNums = Set();

  moreNums.add(1);
  moreNums.add(2);
  moreNums.add(3);

  for(int ele in nums){
    print(ele);
  }

  countries.forEach((c)=> print(c));

  for(int ele in moreNums){
    if(moreNums.lookup(ele) == 2){
      print(ele);
      break;
    }
  }
}

void mapFunction(){
  Map<String, String> countries = Map();
  countries['japan'] = 'asia';
  countries['germany'] = 'europe';
  countries['brazil'] = 'south america';

  for(var key in countries.keys){
    print("Country's name: $key");
  }
  for(String value in countries.values){
    print("Continent's name: $value");
  }

  if(countries.containsKey('germany')){
    countries.update('germany', (val)=>'european union');
    countries.forEach((key, value) => print("Country: $key and Continent: $value"));
  }

}


void main(){

  Queue myQueue = Queue();
  print('default implementation ${myQueue.runtimeType}');

  myQueue.add('sanjib');
  myQueue.add(12);
  myQueue.add('john');
  myQueue.add('gamil');

  for(var allVals in myQueue){
    print(allVals);
  }
  print('we will remove the first ele: ${myQueue.elementAt(0)}');
  myQueue.removeFirst();
  for(var allVals in myQueue){
    print(allVals);
  }
  print("We are removing the last element ${myQueue.
  elementAt(2  )}.");
  myQueue.removeLast();

  for(var allVals in myQueue){
    print(allVals);
  }
//  var name;
//  var age;
//  List<Map<String, dynamic>> users = [
//    { name: "Peter", age: 18 },
//    { name: "Mira", age: 20 },
//    { name: "AJason", age: 22 },
//    { name: "Morgan", age: 32 },
//    { name: "Mary", age: 50 },
//    { name: "Will", age: 86 },
//    { name: "Bruce", age: 96 },
//  ];
//
//  var hasNamesWithLetterA = users.every((user) {
//    print(user);
//    print(user.toString());
//    return user.toString().startsWith("{");
//  });
//  print(hasNamesWithLetterA);
//  var overTwentyOne = users.where((user) => user[age] > 21);
//  print(overTwentyOne.length);



//  List<Map<String, dynamic>> users =[
//    {'name': 'peter', 'age': 18},
//    {'name': 'Mira', 'age': 12},
//    {'name': 'Jason', 'age': 22},
//  ];
//    var hasNamesWithLetterA = users.every((user) {
//    print(user);
//    print(user['name'].toString());
//    return user.toString().startsWith("{");
//  });
//  print(hasNamesWithLetterA);
//  var is18AndOver = users.every((user)=>user['age'] >= 18);
//  print(is18AndOver);
//  mapFunction();
//  setFunction();
//  listFunction();
//  var lst = List();
//  lst.add(3);
//  lst.add(4);
//  print(lst);



}
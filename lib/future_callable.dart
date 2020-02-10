import 'dart:async';

class CallableClassWithoutArgument{
  String output = 'Callable class';
  void call(){
    print(output);
  }
}

class CallableClassWithArgument{
  String call(String name)=> name;
}

class Person{
  String name;
  String call(String message, [String name]){
    return "this message: '$message', has been passed to the persson: $name";

  }

}

Future<String> checkingNewsApp(){
  Future<String> delaying5s = Future
      .delayed(Duration(seconds: 5), (){
     return 'the latest headlines are displayed here.';
  });
  return delaying5s;
}

void displayNews(){
  Future<String> lines = checkingNewsApp();
  lines.then((val){
    print('displaying news here: $val');
  });
}

Future<String> checkingVersions(){
  Future<String> delaying5s = Future.delayed(Duration(seconds: 5),(){
    return 'version 2.x';
  });
   return delaying5s;
}

void checkVersion() async{

  try{
    String version = await checkingVersions();
    print('displaying version here: $version');
  } catch(e){
    print(e);
  }
}

void main(){

  Future<int>.delayed(Duration(seconds: 6),()=>Future.error('errrrr'))
      .then((val){
        print(val);
  }).catchError(
          (err) => print('caught $err'),
    test: (err) => err.runtimeType == String,
  ).whenComplete((){
    print('completed');
  });

//  checkVersion();

//  print('the main UI thread is starting on here.');
//  print('now it will take 5seconds to display news');
//  displayNews();
//  print('the main UI thread ends.');





















//  var john = Person();
//  john.name = 'john';
//  String name = john.name;
//  String msgAndName = john('hi john how are you ?', name);
//  print(msgAndName);

//  var withoutObj = CallableClassWithoutArgument();
//  var withObj = CallableClassWithArgument();
//
//  withoutObj();
//  print(withObj('john '));
//  print(withObj.call('calling john'));
}

















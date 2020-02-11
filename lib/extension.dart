import 'dart:async';

getDuration(int seconds){
  return Duration(seconds: seconds);
}

extension MyInt on int{
  Duration get seconds => Duration(seconds: this);
  DateTime monthsAgo() => DateTime.now().subtract(
    Duration(hours: 24 * 30 * this)
  );
}

extension MyString on String{
  bool isValidEmail() => RegExp('^[a-z]*@[a-z]*\.com',
      caseSensitive: false).hasMatch(this);

}

extension MyStreamController<T> on StreamController<T>{
  void set latest(item) => this.add(item);
}

void main(){
//  print(getDuration(2));
//
//  print(2.seconds);
//print(MyInt(2).seconds);
  print('super@gmail.com'.isValidEmail());
  print('notanemail'.isValidEmail());
  StreamController<int> controller = StreamController<int>();
  controller.stream.listen((value) => print('Got value $value'));

  controller.latest = 5;
  controller.latest = 10;
}
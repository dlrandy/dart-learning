

import 'dart:async';

//import 'dart:html';

void main() async{

//  StreamController<String> controller = StreamController<String>();
//  controller.stream.listen(
//        (data) => print('receiving data: $data'),
//        onDone: () => print('done'),
//        onError: (e) => print(e),
//  );
//
//  controller.add('hello');
//  controller.add('stream');
//
//  controller.addError('throw this error.');
//  await controller.close();

//  StreamController<String> controller2 = StreamController<String>();
//  Stream<String> broadStream = controller2.stream.asBroadcastStream();
//
//  broadStream.listen((data) => print(data));
//  broadStream.listen((data) => print(data));
//
//  controller2.add('22');
//  controller2.add('2222');
//
//  await for(var data in broadStream){
//    print('await: $data');
//  }

// not output
//  controller2.add('333');
//  controller2.add('444');

//  Future<String> result = HttpRequest.getString('https://swapi.co/api/people/1');
//  Stream<String> rs = Stream.fromFuture(result);
//  rs.listen((data) => print(data),
//  onDone: () => print('done')
//  );

List<String> chars = 'dart is awesome.'.split('');
Stream<String> cs = Stream.fromIterable(chars);
//cs.listen(print);

var i = 0;
cs.listen((char){
  Timer(Duration(milliseconds: i * 200), () => print(char));
  i++;
});

}
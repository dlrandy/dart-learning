import 'package:dart_basics/dart_basics.dart' as dart_basics;
import 'package:dart_basics/funtion_object.dart' as dart_funcs;
import 'package:dart_basics/inheritance_mixins.dart' as dart_inheri;
import 'package:dart_basics/abstrct_interface.dart' as dart_interface;
import 'package:dart_basics/anonymous.dart' as anoymous;
import 'package:dart_basics/data_structure.dart' as data_structure;
import 'package:dart_basics/future_callable.dart' as furture_callable;
import 'package:dart_basics/stream.dart' as stream;
import 'dart:io';
import 'dart:async';
import 'package:dart_basics/extension.dart' as dart_extension;

final File myFile = File('indx.html');

Future main (List<String> arguments) async {
//assert(''.isEmpty,'true not executed.');
//assert(''.isNotEmpty, 'false executed.');

  //  print('Hello world: ${dart_basics.calculate()}!');
//  dart_basics.testFunc();
//  dart_funcs.main();
//dart_inheri.main();
//dart_interface.main();
//  doSomething();
//anoymous.main();
//data_structure.main();

//  furture_callable.main();

//stream.main();
dart_extension.main();
//var myServer = await HttpServer.bind('127.0.0.1',
//    8080);
//print('server is listening on ${myServer.port}');

//myServer.listen((HttpRequest request){
//  request
//      .response.write('server response')
//     ;
//  request.response.close();
//
//});

//await for(HttpRequest req in myServer){
//  if(await myFile.exists()){
//    print('file path: ${myFile.path}');
//    req.response.headers.contentType = ContentType.html;
//    await myFile.openRead().pipe(req.response);
//
//  }
//  req.response.close();
//};
}



void doSomething(){
  print('Do something');
  lifeIsShort();
}

void lifeIsShort(){
  print('life is too short to do so many things.');
}
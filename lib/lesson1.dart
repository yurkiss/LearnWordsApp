import 'dart:ffi';



void main() {

  var r = function2('qwe');

  var l = function1();
  // print(r);
  // print(l);
  l.forEach(function2);

}

List<String> function1() {

  var list = <String>['awe'];
  list
    ..add("value1")
    ..add("value2");

  return list;
}


void function2(String param1) {
  print('function2($param1)');
}


class Semaphore {

  final int i;

  Semaphore(this.i);


}
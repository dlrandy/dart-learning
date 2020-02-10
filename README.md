dart是OO语言，一切都是对象。

null意味着数据值不存在。所有的值类型都是一个对象， null用来创建没有值的实例。

dart的变量存储着对象的引用。也就是变量是内存的一个位置或者容器来包含着值的引用。

final 变量只能被设置一次。实例变量只能是final不能是const。
const 适用于编译时的常量；final用于不会变的实例变量。
const是隐式的final。

int和double都是num的子类

dart的string是UTF-16的 code unit序列。

UTF-8特别适用于英文，它会将所有字符编码成8bits。UTF-16使用两个bytes用于大多数字符。utf-32
则是以4个byte覆盖所有的字符
http://kunststube.net/encoding/

constant 常量必须有constant value来赋值,
且不能是variable 变量。

Set是不同items的无序集合。
```dart
// this is a set
var fruits = {'a', 'b', 'c'};
// this is a map
var myInteger = {}; 
```
dart里map 字面量的语法和set 字面量相似
{} 是一个默认的Map 类型。

类型测试操作符
as，is，is!

赋值操作符
=， ??=

条件表达式
var a = B > c ？ 1 ：2;
var a = b ?? c;

当Object是iterable的时候，可以使用forEach


class可以同时持有变量和方法

不同的参数类型
positional parameters， named parameters，optional parameters

dart的构造器
默认，参数化，named 
一个dart 类可以有多个构造器

dart的类里两种引用变量的类型：
class-level, object-level 或者 instance -level;


dart支持单继承，不支持多继承， 但是支持多级继承

子类必须指定覆盖父类的哪个构造器，否则子类的named constructor将会覆盖父类的默认构造器


Mixins是一种在多个类层级里复用code的方式，dart里的mixin通过关键字with实现。


dart里的class既可以被继承，也可以作为mixin使用

mixin是有限的多继承。

类之间的联系都是事先建立的。类之间识别和建立联系是OOP
的一个重要的方面。

类之间，实体之间，对象之间的联系：
1. 继承关系
2. 组合关系
3. 使用关系
4. 实例关系

抽象类是提供部分类实现，未实现的部分交由子类实现；
抽象的方法只存在抽象类。抽象方法是指在方法名后面加个分号；

interface是类之间的协定。无论是抽象类还是实体类，都可以是接口；

对于抽象类，如果只想实现抽象方法，子类可以使用extends；如果想
全部由子类实现可以使用implements。

dart里的interface是一个类，不能extends但是可以implements。

Mixins 可以在非常多的类里引用变量和方法。但是interface也可以；
interface定义语义约定，所有的派生类都改遵守的。

虽然不能通过继承实现继承多个class，但是可以组合
抽象类，interface和mixins来实现。

静态方法里不能访问实例方法

使用静态变量和方法的最大好处就是，消耗更少的内存，只在要
使用的时候初始化内存。
而实例变量不管使用还是不使用，一旦初始化，就占用内存。

实例方法可以访问到静态的属性。但是静态的方法不能够访问到
实例的属性.

dart的静态方法里不能使用this，但是JavaScript里可以。

dart里处理异常的方法：
1.知道错误类型的情况下使用 try on exception；
2.try catch
3.try catch finally

###Stack Trace
程序运行的时候，内存在两个地方分配，stack和heap。如果代码里有问题，
在分配内存之前，一些事件会被触发，可以在stack里追踪。
stack trace就是异常发生时，app的调用方法列表。最顶上的方法就是
错误发生的地方。

dart里一切皆对象。Lambda，high-order，lexical closure也是
匿名函数。

dart里lambada实现了higher-order functions。

匿名函数不好的地方在于不能递归调用。

闭包是一个可以访问parent scope的函数，即便scope被关闭了。

闭包包装着非本地的变量，这些变量是在函数声明时有效的

dart的collection数据结构常见的List Set Map Queue。

为什么要有数据结构？
数据结构主要是以安全方便的方式提供数据的存取的，

List是一个有序的collection。
List有两种类型，一种是固定长度，另一种是可增长长度；
主要是指运行时可变与否。

遍历List的三种方式：
1. for in
2. forEach
3. for。。

list的一些操作会返回来Iterable，需要转换回List

Set是一个无序的唯一item的集合
两种方式创建Set：
1. Set <type> set name = {};
2. var setname = <Type> {};
对于set类型的遍历，多使用

```dart
  var name, age;
  List<Map<String, dynamic>> users =[
    {name: 'peter', age: 18},
    {name: 'Mira', age: 12},
    {name: 'Jason', age: 22},
  ];
  var is18AndOver = users.every((user)=>user[age] >= 18);
  print(is18AndOver);
//=============================
//  var name, age;
  List<Map<String, dynamic>> users =[
    {'name': 'peter', 'age': 18},
    {'name': 'Mira', 'age': 12},
    {'name': 'Jason', 'age': 22},
  ];
  var is18AndOver = users.every((user)=>user['age'] >= 18);
  print(is18AndOver);

```

Queue适合一端加入元素，一端删除元素的。

Callable Class
Dart隐式将call()方法变成闭包(someVariable.call());
当一个对象的call方法是函数类型的是，他就有了匿名函数的特性。

Dart里可以像函数一样调用class，只需要实现call方法

callable class 是一个class的实例通过实现call方法
可以像一个函数被调用。

dart是单线程的语言，但是可以使用多线程异步编程。

Android的多线程模型
android app启动的时候，运行在main UI线程，它处理着所有的
actividties，比如触屏操作等。其他非用户交互的，一般运行在
application线程，比如收发邮件，看电影等。所以android
是允许并行处理的，是多线程的。

dart虽然是单线程的，但是它使用Future，async，await允许
异步编程。

bin下的main.dart 访问packages--->
Dart libraries ---> dart自带libraries(dart:)
和自定义的(lib下的)以及安装的packages。

注意lib里面下划线开头的对外部不可见。





































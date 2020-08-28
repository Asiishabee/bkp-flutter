import 'package:flutter/material.dart';
import 'package:ram_app/ShowTimes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _homepage = 0;
final List<Transaction> _usertransaction = [dsdkjasdhasdbk ,dasjdhgasdkias]
  void _incrementCounter() {
    setState(() {

      _homepage++;
    });
  }
void addSomething(int a , int b){
 print(a+b); 
}
  @override
  Widget build(BuildContext context) {
  addSomethig(6,4);
  print('main build method');
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: TransactionList( addressofAddfunc:addSomething),
      ),
      floatingActionButton: FloatingActionButton(
    onPressed: _incrementCounter,
    tooltip: 'Increment',
    child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

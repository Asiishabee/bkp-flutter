import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './models/transaction.dart';
import 'package:expenses_app/widget/new_transaction.dart';
import 'package:expenses_app/widget/transaction_list.dart';
import './widget/chart.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS? CupertinoApp()

        :MaterialApp(
      title: "Personal Expenses",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Grenze_Gotisch',
        // ignore: deprecated_member_use
        textTheme: ThemeData.light().textTheme.copyWith(title: TextStyle(
          fontFamily: 'Grenze_Gotisch', fontWeight: FontWeight.bold,
          fontSize: 18,
        )),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            // ignore: deprecated_member_use
            title: TextStyle(
              fontFamily: 'Grenze_Gotisch',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              letterSpacing: 1.0,
            )
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  final List<Transaction> _userTransactions = [
  ];

  bool _showChart =false;

  List<Transaction> get _recentTransaction {
    return _userTransactions.where((tx){
      return tx.date.isAfter(
          DateTime.now().subtract(
              Duration(days:7),
          ),);
    }).toList();
  }

  void _addNewTransaction(String txTitle, double txAmount, DateTime chosenDate){
    final newTx =Transaction(
      title: txTitle,
      amount: txAmount,
      date: chosenDate,
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }


  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(context: ctx, builder: (_) {

      return GestureDetector(
        onTap: () {},
        child: NewTransaction(_addNewTransaction),
        behavior:HitTestBehavior.opaque,
      ) ;
    },);
  }

  void _deleteTransaction(String id){
    setState(() {
      _userTransactions.removeWhere((tx) => tx.id==id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    final PreferredSizeWidget appBar = Platform.isIOS? CupertinoNavigationBar(
      middle: Text('Personal Expenses'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            child: Icon(CupertinoIcons.add),
            onTap: () => _startAddNewTransaction(context),
          )
        ],
      ),
    )
        :AppBar(
      title: Text(
        "Personal Expenses",
        style: TextStyle(),
      ),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.add),
          onPressed: () =>  _startAddNewTransaction(context),
        ),
      ],
    );
    final txList = Container(height: (
        MediaQuery.of(context).size.height- appBar.preferredSize.height-MediaQuery.of(context).padding.top) * 0.6,
        child: TransactionList(_userTransactions, _deleteTransaction));
    final pageBody =SafeArea(child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if(isLandscape)Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // ignore: deprecated_member_use
              Text("Show Chart", style: Theme.of(context).textTheme.title,),
              Switch.adaptive(
                activeColor: Theme.of(context).primaryColor,
                value: _showChart, onChanged: (val){
                setState(() {
                  _showChart =val;
                });
              },),
            ],
          ),
          if(!isLandscape)Container(height: (
              MediaQuery.of(context).size.height- appBar.preferredSize.height -MediaQuery.of(context).padding.top) * 0.3,
              child: Chart(_recentTransaction)),
          if(!isLandscape) txList,
          if(isLandscape)_showChart
              ? Container(height: (
              MediaQuery.of(context).size.height- appBar.preferredSize.height -MediaQuery.of(context).padding.top) * 0.6,
              child: Chart(_recentTransaction))
              :txList
        ],),
    ),
    );
    return Platform.isIOS? CupertinoPageScaffold(child: pageBody, navigationBar: appBar,):Scaffold(
      appBar: appBar,
      body: pageBody,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Platform.isIOS ? Container()
      :FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () =>  _startAddNewTransaction(context),
      ),
    );
  }
}

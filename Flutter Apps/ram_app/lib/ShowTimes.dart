import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;
  final Funtion addressOfAddFunction;
  TransactionList({@required this.addressOfAddFunction});

  @override
  _ShowTimesState createState() => _ShowTimesState();
}

class _ShowTimesState extends State<ShowTimes> {
  var myNum = 100;
  @override
  Widget build(BuildContext context) {
    print('show times build method');
    return  Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '${widget.transactions}',
        ),
         '${widget.counterData}',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          '$myNum',
          style: Theme.of(context).textTheme.headline4,
        ),
        RaisedButton(child: Text('ok'),onPressed: ()=> setState(() {
          myNum+=10;
        }),),
        GestureDetector(child: Container(child: Text('no'),color: Colors.grey,width: 100,height: 50,),onTap: () {
          return print('no pressed');
    }  ,)

      ],
    );
  }
}
Text(

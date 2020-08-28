import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override

  Widget build(BuildContext context) {
    return transactions.isEmpty
      ? Column(
      children: <Widget>[
      Center(
        child: Text(
        "Transaction is Empty",
        // ignore: deprecated_member_use
        style: Theme.of(context).textTheme.title,

    ),
      ),
      ],
    )
        :ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          elevation: 4,
          child: ListTile(leading: CircleAvatar(radius: 30,
            child:Padding(
              padding: EdgeInsets.all(6),
              child: FittedBox(child: Text('\$${transactions[index].amount}')
              ),
            ),
          ),
            // ignore: deprecated_member_use
            title: Text(transactions[index].title,style: Theme.of(context).textTheme.title,),
            subtitle: Text(DateFormat.yMMMd().format(transactions[index].date),
          ),
            trailing: MediaQuery.of(context).size.width>420
              ?FlatButton.icon(onPressed: () => deleteTx(transactions[index].id),
                icon: Icon(Icons.delete_forever), label: Text('Remove'),textColor: Colors.deepPurple[700],)
                  :IconButton(
              icon: Icon(Icons.delete_forever),
             color: Colors.deepPurple[700],
              onPressed: () => deleteTx(transactions[index].id),
          ),
        ),
        );

//          return Card(
//          child: Row(children: <Widget>[
//          Container(
//          margin: EdgeInsets.symmetric(vertical:18, horizontal: 18),
//          decoration: BoxDecoration(
//          border: Border.all(color: Theme.of(context).primaryColor),
//          ),
//          padding: EdgeInsets.all(10),
//          child: Text(
//          '\$${transactions[index].amount.toStringAsFixed(2)}',
//          style: TextStyle(
//          fontSize: 20,
//          fontWeight: FontWeight.bold,
//          color:Theme.of(context).primaryColor,
//          ),
//          ),
//          ),
//          Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//          Text(
//          transactions[index].title,
//          style: TextStyle(
//          color:Theme.of(context).primaryColor,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 17,
//                    ),
//                  ),
//                  Text(
//                    DateFormat.yMMMd().format(transactions[index].date),
//                    style: TextStyle(
//                      color: Theme.of(context).primaryColorLight,
//                      fontWeight: FontWeight.bold,
//                      fontSize: 12,
//                    ),
//                  ),
//                ],
//              )
//            ],
//            ),
//          );
      },
      itemCount: transactions.length,
    );
  }
}


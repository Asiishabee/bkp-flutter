import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({ this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontFamily: 'Dancing_Script',
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.indigo[800],
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Dancing_Script',
                  fontSize: 12.0,
                  color: Colors.indigo[900],
                ),
              ),
              SizedBox(height: 5.0),
              FlatButton.icon(
                onPressed: delete,
                label: Text('Delete quote'),
                icon: Icon(Icons.delete),
              ),
            ],
          ),
        ),

    );
  }
}

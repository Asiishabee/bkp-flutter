import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text:' YOU are my DUA came TRUE; Alhamdulilah ', author:'AS!S#E!K'),
    Quote(text:' A million times over, I will always choose YOU ',author:'AS!S#E!K'),
    Quote(text:' YOU will be always my FAVOURITE NOTIFICATION ',author:'AS!S#E!K'),
    Quote(text:' Alhamdulilah We united in DHUNYA, In sha Allah will unite in JANNAH ',author:'AS!S#E!K'),
    Quote(text:' Will be Together Forever, IN SHA ALLAH ',author:'AS!S#E!K'),
    Quote(text:' ASIISHA BEE <3 SHEIK DAWOOD  ',author:'AS!S#E!K')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        title: Text(
            'Awesome Quotes',
          style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontFamily: 'Dancing_Script1',
          fontSize: 30.0,

        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo[300],

      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });

            }
        )).toList(),

      ),

    );
  }
}









import 'Quotes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {


  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List <Quotes> quotes=[
    Quotes(content: 'quote1',author: 'author1'),
    Quotes(content: 'quote2',author: 'author2'),
    Quotes(content: 'quote3',author: 'author3')
  ];



  Widget quoteTemplate(quote){
    return QuoteCard();



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList()
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(

    margin: EdgeInsets.fromLTRB(16,16 ,16,16 ),
    child:Column(
      children: [


        Text(
          quote.content,
          style: TextStyle(

            fontSize: 18,
            color: Colors.grey[600],
          ),
        ),


        SizedBox(
          height: 6,
        ),


        Text(
          quote.author,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
          ),
        ),

      ],
    ) ,

    );
  }
}


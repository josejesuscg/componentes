// import 'dart:html';

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1(),
         SizedBox(height: 30.0), 
         _cardTipo2(), 
         SizedBox(height: 30.0),
         _cardTipo1(),
         SizedBox(height: 30.0), 
         _cardTipo2(), 
         SizedBox(height: 30.0),
         _cardTipo1(),
         SizedBox(height: 30.0), 
         _cardTipo2(), 
         SizedBox(height: 30.0),
         _cardTipo1(),
         SizedBox(height: 30.0), 
         _cardTipo2(), 
         SizedBox(height: 30.0),],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text(
              'Aqui esta el subtitulo que se quiere mostrar en esta tarjeta de Flutter para aprender y trabajar'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {
  return Card(
    semanticContainer: true,
    clipBehavior: Clip.antiAlias,
    elevation: 5.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    color: Colors.white24, 
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://assets.website-files.com/5d315dd990eed30aa7ca5f8f/5d3d843acb7dfd63bcf37e29_tree-and-woodland-company-landscape.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 250.0,
          fit: BoxFit.cover,
        ),

        // Image(image: NetworkImage('https://assets.website-files.com/5d315dd990eed30aa7ca5f8f/5d3d843acb7dfd63bcf37e29_tree-and-woodland-company-landscape.jpg')),
        Container(
          child: Text('Texto para imagen'),
          padding: EdgeInsets.all(10.0),
          
        ),
      ],
    ),
  );
  
}

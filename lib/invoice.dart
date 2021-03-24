import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'Ino_List.dart';

import 'ino_Card.dart';
import 'model/Ino_Data.dart';


class Invoice extends StatelessWidget {
  List<Ino_Data> movies = Ino_List.getMovies();

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(

        child: Stack(

            children: <Widget>[
        new Container(



    child: new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

      Row(
      mainAxisAlignment: MainAxisAlignment.end,

        children: <Widget>[

          FlatButton(
              onPressed: () {

              },
              child: Icon(Icons.sort,
                size: 40,)),FlatButton(
              onPressed: () {

              },
              child: Icon(Icons.add_circle_outlined,
                size: 40,)),
        ],
      ),

          Container(

            //color: Theme.of(context).primaryColor,
            child: new Padding(
              padding: const EdgeInsets.all(10.0),
              child: new Card(
                elevation: 5,
                child: new ListTile(
                  leading: new Icon(Icons.search),
                  title: new TextField(

                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                  ),
                ),
              ),
            ),
          ),

          new  Column(

            children: <Widget>[

              ListView.builder(

                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:movies.length,

                  itemBuilder: (context,index){

                    return  ino_Card(movie: movies[index]);

                  })
            ],
          ),
],
      ),
    ),
    ),
    ],
        )
    );
  }
}


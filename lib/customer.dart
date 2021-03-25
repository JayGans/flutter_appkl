import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Cust_Card.dart';
import 'Cust_List.dart';
import 'model/Cust_Data.dart';








class Customer extends StatelessWidget {
  List<Cust_Data> movies = Cust_List.getMovies();

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

                              return  Cust_Card(movie: movies[index]);

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
import 'package:flutter/material.dart';
import 'package:flutter_appkl/model/Trans_Data.dart';
import 'package:flutter_appkl/theme_changer.dart';

import 'invoice_details.dart';

class Trans_Card extends StatelessWidget {
  final Trans_Data movie;

  Trans_Card({this.movie});

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        print("click"+ movie.client_nm);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => InvoiceDetailPage()));
      },
      child: Column(

        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 2,

            margin: EdgeInsets.only(left: 0, right: 0),

           // decoration: BoxDecoration(color: Colors.white, ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Text(
                    movie.invo_id,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    movie.invo_dt,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.bold),
                  ),
                  ],),


                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    movie.client_nm,
                    style: TextStyle(fontSize: 16,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 10,
                  ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Text(
                    movie.amt,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.bold),
                  ),

                  RaisedButton.icon(
                    onPressed: (){   },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    label: Text('PAID',
                      style: TextStyle(color: Colors.white,fontSize: 12, fontFamily: 'Rubik',height: 1),),
                    icon: Icon(Icons.album_outlined, color:Colors.white,size: 15,),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.lightBlueAccent,),


                  ],
              ),
                ],
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.symmetric(horizontal:10.0),
            child:Container(
              height:1.0,
              width: MediaQuery.of(context).size.width * 2,
              color:Colors.grey,),),
        ],
      ),
    );
  }
}
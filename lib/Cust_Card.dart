import 'package:flutter/material.dart';


import 'model/Cust_Data.dart';



class Cust_Card extends StatelessWidget {
  final Cust_Data movie;

  Cust_Card({this.movie});

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        print("click"+ movie.cid_id);
      /*  Navigator.push(context,
            MaterialPageRoute(builder: (context) => InvoiceDetailPage()));*/
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
              mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  Icon(Icons.person),
                  Text(
                    movie.cnm,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.bold),
                  ),



                  ],),
              SizedBox(
                width: 10,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  Icon(Icons.phone),
                  Text(
                    movie.mno,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.normal),
                  ),

                  ],),
                  SizedBox(
                    height: 10,
                  ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  Icon(Icons.email),
                  Text(
                    movie.email,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.normal),
                  ),
  ],),
                  SizedBox(
                    height: 10,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  Icon(Icons.location_on_outlined),
                  Text(
                    movie.adrs,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.normal),
                  ),],),
                  SizedBox(
                    height: 10,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: <Widget>[
                  Icon(Icons.article_outlined),
                  Text(
                    "GST NO : "+movie.gst,
                    style: TextStyle(fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.normal),
                  ),
                  ],),
                  SizedBox(
                    height: 10,
                  ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: <Widget>[


                  RaisedButton.icon(

                    onPressed: (){   },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    label: Text('EDIT',
                      style: TextStyle(color: Colors.white,fontSize: 12, fontFamily: 'Rubik',height: 1),),
                    icon: Icon(Icons.edit, color:Colors.white,size: 15,),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.green,),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton.icon(
                    onPressed: (){   },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    label: Text('DELETE',
                      style: TextStyle(color: Colors.white,fontSize: 12, fontFamily: 'Rubik',height: 1),),
                    icon: Icon(Icons.delete, color:Colors.white,size: 15,),
                    textColor: Colors.white,
                    splashColor: Colors.red,
                    color: Colors.red,)
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
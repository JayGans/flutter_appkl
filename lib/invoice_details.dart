import 'package:flutter/material.dart';

class InvoiceDetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<InvoiceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Details'),
      ),
      body: Row(
          children: <Widget>[
      //TODO: use Expanded here
      Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(0.0),



      child: new Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

      Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: <Widget>[
         new Padding(
          padding: const EdgeInsets.only( left: 10,
            top: 20,
            right: 10,
            bottom: 2,),

          child:  Text('INV-000234',style: TextStyle(fontSize: 18,

            fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

        ),
        ),
    ],
    ),

    Container(

    //color: Theme.of(context).primaryColor,
    child: new Padding(
    padding: const EdgeInsets.all(5.0),

    child: new Card(
    elevation: 5,
    child: new ListTile(
    trailing: new Icon(Icons.arrow_forward_rounded),
    title: new Text('Client Company Name',style: TextStyle(fontSize: 16,

        fontWeight: FontWeight.bold, fontFamily: 'Rubik',)

    ),
    ),
    ),
    ),
    ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 2,
            right: 10,
            bottom: 10,
          ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
             Text(
              'Invoice Date-03/02/2021',
              style: TextStyle(fontSize: 16,

                  fontWeight: FontWeight.normal, fontFamily: 'Rubik',),
            ),

            RaisedButton.icon(
              onPressed: (){ print('Button Clicked.'); },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              label: Text("PAID",
                style: TextStyle(color: Colors.white, fontFamily: 'Rubik',fontSize: 12,height: 1),),
              icon: Icon(Icons.album_outlined, color:Colors.white,size: 15,),
              textColor: Colors.white,
              splashColor: Colors.red,
              color: Colors.lightBlueAccent,),



          ],
        ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 2,
            right: 10,
            bottom: 10,
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[

              Text(
                'Invoice Particulars',
                style: TextStyle(fontSize: 14,
                    color: Colors.blue,
                    fontWeight: FontWeight.normal, fontFamily: 'Rubik',),
              )


            ],
          ),
        ),

       Container(


            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:DataTable(
          columns: [

            DataColumn(
        label: Text(
                'Particular Name',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
            )),
            DataColumn(label: Text(
                'Units',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
            )),
            DataColumn(label: Text(
                'Unit Cost',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
            )),
            DataColumn(label: Text(
                'Cost',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
            )),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Electricity Bill',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
              DataCell(Text('1')),
              DataCell(Text('₹300.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
              DataCell(Text('₹300.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
            ]),
            DataRow(cells: [
              DataCell(Text('Security Staff',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
              DataCell(Text('1')),
              DataCell(Text('₹800.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
              DataCell(Text('₹800.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
            ]),
            DataRow(cells: [
              DataCell(Text('Office Exp',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
              DataCell(Text('1')),
              DataCell(Text('₹200.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
              DataCell(Text('₹200.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
            ]),

          ],
        ),
            ),

        ),
          Container(
          color:  Color.fromARGB(255, 231, 247, 250),
        child:Padding(

          padding: const EdgeInsets.all(10),

          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: <Widget>[

              Text(
                'Total',
                style: TextStyle(fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '₹1,300.00',
                style: TextStyle(fontSize: 16,
                    color: Colors.black,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold),
              )

            ],
          ),
        ), ),
        Container(


          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:DataTable(
              columns: [

                DataColumn(
                    label: Text(
                        'Tax Name',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
                    )),
                DataColumn(label: Text(
                    'Percentage',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
                )),
                DataColumn(label: Text(
                    'Applicable',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
                )),
                DataColumn(label: Text(
                    'Amount',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, fontFamily: 'Rubik',)
                )),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('Service Tax',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
                  DataCell(Text('14')),
                  DataCell(Text('₹700.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
                  DataCell(Text('₹150.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
                ]),
                DataRow(cells: [
                  DataCell(Text('Other Tax',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
                  DataCell(Text('14')),
                  DataCell(Text('₹700.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
                  DataCell(Text('₹150.00',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Rubik',))),
                ]),


              ],
            ),
          ),

        ),
        Container(

          child:Padding(

            padding: const EdgeInsets.all(10),

            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[

                Text(
                  'Total Tax',
                  style: TextStyle(fontSize: 14,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  '₹300.00',
                  style: TextStyle(fontSize: 14,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.normal),
                )

              ],
            ),
          ), ),

        Container(
          color:  Color.fromARGB(255, 231, 247, 250),
          child:Padding(

            padding: const EdgeInsets.all(10),

            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[

                Text(
                  'Bill Value with Taxes',
                  style: TextStyle(fontSize: 16,
color: Colors.black,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹1,600.00',

                  style: TextStyle(fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.bold),
                )

              ],
            ),
          ), ),

    ],
    ),
    ),

    ),
    ),
    ],
      ),
    );
  }
}
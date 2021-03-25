import 'package:flutter/material.dart';
import 'package:flutter_appkl/pdf_data/save_file_mobile.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:intl/intl.dart';

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
        Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Generate PDF',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: _createPDF,
                    color: Colors.blue,
                  )
                ],
              )
          ),
        )
    ],
    ),
    ),

    ),
    ),
    ],
      ),
    );
  }




  Future<void> _createPDF() async {
    //Create a PDF document.
    final PdfDocument document = PdfDocument();
    //Add page to the PDF
    final PdfPage page = document.pages.add();
    //Get page client size
    final Size pageSize = page.getClientSize();
    //Draw rectangle
    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
        pen: PdfPen(PdfColor(142, 170, 219, 255)));
    //Generate PDF grid.
    final PdfGrid grid = getGrid();
    final PdfGrid grid1 = getGrid_tax();
    //Draw the header section by creating text element
    final PdfLayoutResult result = drawHeader(page, pageSize, grid);
    //Draw grid
    drawGrid(page, grid, result);
    //drawGrid(page, grid, result);
    drawGrid1(page, grid1, result);
    //Add invoice footer
    drawtamt(page, pageSize);
    drawFooter(page, pageSize);
    //Save and launch the document
    final List<int> bytes = document.save();
    //Dispose the document.
    document.dispose();
    //Save and launch file.
    SaveFilehelper.saveAndOpenFile(bytes);
  }

  //Draws the invoice header
  PdfLayoutResult drawHeader(PdfPage page, Size pageSize, PdfGrid grid) {
    //Draw rectangle
    page.graphics.drawRectangle(
        brush: PdfSolidBrush(PdfColor(91, 126, 215, 255)),
        bounds: Rect.fromLTWH(0, 0, pageSize.width - 115, 90));
    //Draw string
    page.graphics.drawString(
        'INVOICE', PdfStandardFont(PdfFontFamily.helvetica, 30),
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(25, 0, pageSize.width - 115, 90),
        format: PdfStringFormat(lineAlignment: PdfVerticalAlignment.middle));

    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 90),
        brush: PdfSolidBrush(PdfColor(65, 104, 205)));

    page.graphics.drawString('\Rs.' + getTotalAmount(grid).toString(),
        PdfStandardFont(PdfFontFamily.helvetica, 18),
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 100),
        brush: PdfBrushes.white,
        format: PdfStringFormat(
            alignment: PdfTextAlignment.center,
            lineAlignment: PdfVerticalAlignment.middle));

    final PdfFont contentFont = PdfStandardFont(PdfFontFamily.helvetica, 9);
    //Draw string
    page.graphics.drawString('Amount', contentFont,
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(400, 0, pageSize.width - 400, 33),
        format: PdfStringFormat(
            alignment: PdfTextAlignment.center,
            lineAlignment: PdfVerticalAlignment.bottom));
    //Create data foramt and convert it to text.
    final DateFormat format = DateFormat.yMMMMd('en_US');
    final String invoiceNumber = 'Invoice Number: INV-0009886\r\n\r\nDate: ' +
        format.format(DateTime.now());
    final Size contentSize = contentFont.measureString(invoiceNumber);
    const String address =
        'Bill To: \r\n\r\nGanesh Jaybhay, \r\n\r\n Jamkhed, Ahmednagar, \r\n\r\n413201';

    PdfTextElement(text: invoiceNumber, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(pageSize.width - (contentSize.width + 30), 120,
            contentSize.width + 30, pageSize.height - 120));

    return PdfTextElement(text: address, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(30, 120,
            pageSize.width - (contentSize.width + 30), pageSize.height - 120));
  }

  //Draws the grid
  void drawGrid(PdfPage page, PdfGrid grid, PdfLayoutResult result) {
    Rect totalPriceCellBounds;
    Rect quantityCellBounds;
    //Invoke the beginCellLayout event.
    grid.beginCellLayout = (Object sender, PdfGridBeginCellLayoutArgs args) {
      final PdfGrid grid = sender as PdfGrid;
      if (args.cellIndex == grid.columns.count - 1) {
        totalPriceCellBounds = args.bounds;
      } else if (args.cellIndex == grid.columns.count - 2) {
        quantityCellBounds = args.bounds;
      }
    };
    //Draw the PDF grid and get the result.
    result = grid.draw(
        page: page, bounds: Rect.fromLTWH(0, result.bounds.bottom + 40, 0, 0));

    //Draw grand total.
    page.graphics.drawString('Total',
        PdfStandardFont(PdfFontFamily.helvetica, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            quantityCellBounds.left,
            result.bounds.bottom + 10,
            quantityCellBounds.width,
            quantityCellBounds.height));
    page.graphics.drawString(getTotalAmount(grid).toString(),
        PdfStandardFont(PdfFontFamily.helvetica, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            totalPriceCellBounds.left,
            result.bounds.bottom + 10,
            totalPriceCellBounds.width,
            totalPriceCellBounds.height));


  }
  void drawGrid1(PdfPage page, PdfGrid grid, PdfLayoutResult result) {
    Rect totalPriceCellBounds;
    Rect quantityCellBounds;
    //Invoke the beginCellLayout event.
    grid.beginCellLayout = (Object sender, PdfGridBeginCellLayoutArgs args) {
      final PdfGrid grid = sender as PdfGrid;
      if (args.cellIndex == grid.columns.count - 1) {
        totalPriceCellBounds = args.bounds;
      } else if (args.cellIndex == grid.columns.count - 2) {
        quantityCellBounds = args.bounds;
      }
    };
    //Draw the PDF grid and get the result.
    result = grid.draw(
        page: page, bounds: Rect.fromLTWH(0, result.bounds.bottom + 160, 0, 0));

    //Draw grand total.
    page.graphics.drawString('Total Tax',
        PdfStandardFont(PdfFontFamily.helvetica, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            quantityCellBounds.left,
            result.bounds.bottom + 10,
            quantityCellBounds.width,
            quantityCellBounds.height));
    page.graphics.drawString(getTotalAmount(grid).toString(),
        PdfStandardFont(PdfFontFamily.helvetica, 9, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(
            totalPriceCellBounds.left,
            result.bounds.bottom + 10,
            totalPriceCellBounds.width,
            totalPriceCellBounds.height));


  }
  void drawtamt(PdfPage page,  Size pageSize) {
    Rect totalPriceCellBounds;
    Rect quantityCellBounds;

    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(0,pageSize.height - 310,1000,40),
        brush: PdfSolidBrush(PdfColor(65, 104, 205)));
    //Draw grand total.
    page.graphics.drawString('Bill Value with Taxes',
        PdfStandardFont(PdfFontFamily.helvetica, 14, style: PdfFontStyle.bold),
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(pageSize.width - 500, pageSize.height - 300, 0, 0));
    page.graphics.drawString("Rs.3000",

        PdfStandardFont(PdfFontFamily.helvetica, 14, style: PdfFontStyle.bold),
        brush: PdfBrushes.white,
        bounds: Rect.fromLTWH(pageSize.width - 80, pageSize.height - 300, 0, 0));


  }
  //Draw the invoice footer data.
  void drawFooter(PdfPage page, Size pageSize) {

    final PdfPen linePen =
    PdfPen(PdfColor(142, 170, 219, 255), dashStyle: PdfDashStyle.custom);
    linePen.dashPattern = <double>[3, 3];
    //Draw line
    page.graphics.drawLine(linePen, Offset(0, pageSize.height - 100),
        Offset(pageSize.width, pageSize.height - 100));
    const String footerContent =
        'Swipez Pvt Ltd.\r\n\r\nPune,413205\r\n\r\nAny Questions? support@Swipez.com';

    //Added 30 as a margin for the layout
    page.graphics.drawString(
        footerContent, PdfStandardFont(PdfFontFamily.helvetica, 9),
        format: PdfStringFormat(alignment: PdfTextAlignment.right),
        bounds: Rect.fromLTWH(pageSize.width - 30, pageSize.height - 70, 0, 0));
  }

  //Create PDF grid and return
  PdfGrid getGrid() {
    //Create a PDF grid
    final PdfGrid grid = PdfGrid();
    //Secify the columns count to the grid.
    grid.columns.add(count: 5);
    //Create the header row of the grid.
    final PdfGridRow headerRow = grid.headers.add(1)[0];
    //Set style
    headerRow.style.backgroundBrush = PdfSolidBrush(PdfColor(68, 114, 196));
    headerRow.style.textBrush = PdfBrushes.white;
    headerRow.cells[0].value = 'Sr.No';
    headerRow.cells[0].stringFormat.alignment = PdfTextAlignment.center;
    headerRow.cells[1].value = 'Particular Name';
    headerRow.cells[2].value = 'Units';
    headerRow.cells[3].value = 'Unit Cost';
    headerRow.cells[4].value = 'Cost';

    addProducts(1,'Electricity Bill', 1, 300, 300, grid);
    addProducts(2,'Security Staff', 1, 800, 800, grid);
    addProducts(3,'Office Exp', 1, 200, 200, grid);
    //Apply the grid built-in style
    grid.applyBuiltInStyle(PdfGridBuiltInStyle.listTable4Accent5);
    grid.columns[1].width = 200;
    for (int i = 0; i < headerRow.cells.count; i++) {
      headerRow.cells[i].style.cellPadding =
          PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
    }
    for (int i = 0; i < grid.rows.count; i++) {
      final PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        final PdfGridCell cell = row.cells[j];
        if (j == 0) {
          cell.stringFormat.alignment = PdfTextAlignment.center;
        }
        cell.style.cellPadding =
            PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
      }
    }
    return grid;
  }
  PdfGrid getGrid_tax() {
    //Create a PDF grid
    final PdfGrid grid = PdfGrid();
    //Secify the columns count to the grid.
    grid.columns.add(count: 5);
    //Create the header row of the grid.
    final PdfGridRow headerRow = grid.headers.add(1)[0];
    //Set style
    headerRow.style.backgroundBrush = PdfSolidBrush(PdfColor(68, 114, 196));
    headerRow.style.textBrush = PdfBrushes.white;
    headerRow.cells[0].value = 'Sr.No';
    headerRow.cells[0].stringFormat.alignment = PdfTextAlignment.center;
    headerRow.cells[1].value = 'Tax Name';
    headerRow.cells[2].value = 'Percentage';
    headerRow.cells[3].value = 'Applicable';
    headerRow.cells[4].value = 'Amount';

    addProducts(1,'Service Tax', 14, 500, 300, grid);

    //Apply the grid built-in style
    grid.applyBuiltInStyle(PdfGridBuiltInStyle.listTable4Accent5);
    grid.columns[1].width = 200;
    for (int i = 0; i < headerRow.cells.count; i++) {
      headerRow.cells[i].style.cellPadding =
          PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
    }
    for (int i = 0; i < grid.rows.count; i++) {
      final PdfGridRow row = grid.rows[i];
      for (int j = 0; j < row.cells.count; j++) {
        final PdfGridCell cell = row.cells[j];
        if (j == 0) {
          cell.stringFormat.alignment = PdfTextAlignment.center;
        }
        cell.style.cellPadding =
            PdfPaddings(bottom: 5, left: 5, right: 5, top: 5);
      }
    }
    return grid;
  }
//Create and row for the grid.
  void addProducts(int srno,String productName, double unit,
      double unitcost, double total, PdfGrid grid) {
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = srno.toString();
    row.cells[1].value = productName;
    row.cells[2].value = unit.toString();
    row.cells[3].value = unitcost.toString();

    row.cells[4].value = total.toString();
  }

  //Get the total amount.
  double getTotalAmount(PdfGrid grid) {
    double total = 0;
    for (int i = 0; i < grid.rows.count; i++) {
      final String value = grid.rows[i].cells[grid.columns.count - 2].value;
      total += double.parse(value);
    }
    return total;
  }
}
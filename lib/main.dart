import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:syncfusion_pdf/mobile.dart';

void main() {
  runApp(const SyncFusionPdf());
}

class SyncFusionPdf extends StatefulWidget {
  const SyncFusionPdf({Key? key}) : super(key: key);

  @override
  State<SyncFusionPdf> createState() => _SyncFusionPdfState();
}

class _SyncFusionPdfState extends State<SyncFusionPdf> {
  Future<void> _createPdf() async {
    PdfDocument document = PdfDocument();
    var page = document.pages.add();
    page.graphics.drawString(
        'I.D #AA04', PdfStandardFont(PdfFontFamily.helvetica, 16),
        bounds: Rect.fromLTWH(0, 0, page.getClientSize().width, 50),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString(
        '10 August 2022', PdfStandardFont(PdfFontFamily.helvetica, 16),
        bounds: Rect.fromLTWH(0, 0, page.getClientSize().width, 50),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.right));
    page.graphics.drawString('RECEIPT',
        PdfStandardFont(PdfFontFamily.helvetica, 28, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 70, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString(
        '. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .',
        PdfStandardFont(PdfFontFamily.helvetica, 28, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 120, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString('Imran Haroon',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 160, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString('Mobile : 0333-1234567',
        PdfStandardFont(PdfFontFamily.helvetica, 16, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 190, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString('Realme GT 8GB/128GB',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 210, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString(
        '. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .',
        PdfStandardFont(PdfFontFamily.helvetica, 28, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 230, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    final PdfGrid grid = PdfGrid();
// Specify the grid column count.
    grid.columns.add(count: 3);

// Add rows to the grid.
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = '1';
    row.cells[1].value = '3800';
    row.cells[2].value = '23-Apr-2022';
    //Set the row style
    row.cells[0].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    
    row.cells[1].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    row.cells[2].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
//  Add next row.
    row = grid.rows.add();
    row.cells[0].value = '2';
    row.cells[1].value = '3800';
    row.cells[2].value = '24-May-2022';

    //Set the row style
    row.cells[0].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    row.cells[1].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    row.cells[2].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
// Add next row.
    row = grid.rows.add();
    row.cells[0].value = '3';
    row.cells[1].value = '3800';
    row.cells[2].value = '10-june-2022';

    row.cells[0].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    row.cells[1].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    row.cells[2].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
// Add next row.
    row = grid.rows.add();
    row.cells[0].value = '4';
    row.cells[1].value = '3800';
    row.cells[2].value = '11-Jun-2022';

    row.cells[0].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    row.cells[1].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    row.cells[2].style.stringFormat = PdfStringFormat(
      alignment: PdfTextAlignment.center,
      lineAlignment: PdfVerticalAlignment.middle,
    );
    // pdfGrid.Rows[i].Cells[j].Style.Borders.Bottom = PdfPens.Transparent;
// Set grid format.
    grid.style = PdfGridStyle(
      cellSpacing: 6.0,
      backgroundBrush: PdfBrushes.darkSeaGreen,
      textBrush: PdfBrushes.black,
      font: PdfStandardFont(PdfFontFamily.timesRoman, 18),
    );

    grid.columns[0].width = 80.0;
    grid.columns[1].width = 160.0;
// Draw table in the PDF page.
    grid.draw(
      page: page,
      bounds: Rect.fromLTWH(
          0, 270, page.getClientSize().width, page.getClientSize().height),
      // graphics: PdfGraphi
    );
    page.graphics.drawString(
        '. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .',
        PdfStandardFont(PdfFontFamily.helvetica, 28, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 390, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));

    // After table in the PDF page.
    page.graphics.drawString('Advance-------------------------------',
        PdfStandardFont(PdfFontFamily.helvetica, 18, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 430, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(73, 73, 74)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('10000',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(180, 430, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));

    page.graphics.drawString('Month-------------------------------',
        PdfStandardFont(PdfFontFamily.helvetica, 18, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 460, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(73, 73, 74)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('12',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(180, 460, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));

    page.graphics.drawString('Installment Paid-------------------------------',
        PdfStandardFont(PdfFontFamily.helvetica, 18, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 490, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(73, 73, 74)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('4',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(180, 490, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString(
        'Monthly Installment-------------------------------',
        PdfStandardFont(PdfFontFamily.helvetica, 18, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 520, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(73, 73, 74)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('3800',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(180, 520, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString('Received Amount-------------------------------',
        PdfStandardFont(PdfFontFamily.helvetica, 18, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 550, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(73, 73, 74)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('15200',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(180, 550, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString('Month Balance-------------------------------',
        PdfStandardFont(PdfFontFamily.helvetica, 18, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 580, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(73, 73, 74)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('8',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(180, 580, page.getClientSize().width, 100),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString('Remaining Amount---------------------------',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 610, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(3, 11, 525)),
        format: PdfStringFormat(alignment: PdfTextAlignment.left));
    page.graphics.drawString('30400',
        PdfStandardFont(PdfFontFamily.helvetica, 22, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(180, 610, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(3, 11, 525)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));

    page.graphics.drawString(
        '. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .',
        PdfStandardFont(PdfFontFamily.helvetica, 28, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 640, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));

    page.graphics.drawString('Thank you for your purchasing',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 700, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));
    page.graphics.drawString('From us',
        PdfStandardFont(PdfFontFamily.helvetica, 20, style: PdfFontStyle.bold),
        bounds: Rect.fromLTWH(0, 730, page.getClientSize().width, 100),
        brush: PdfSolidBrush(PdfColor(111, 111, 112)),
        format: PdfStringFormat(alignment: PdfTextAlignment.center));

    List<int> bytes = await document.save();
    document.dispose();

    saveAndLaunchFile(bytes, 'output.pdf');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('Create Pdf'),
            onPressed: _createPdf,
          ),
        ),
      ),
    );
  }
}

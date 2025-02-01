import 'dart:io';
import 'package:pdf/widgets.dart';
import '/save_and_open_pdf.dart';

class User{
  final String name; 
  final int age;

  const User({required this.name, required this.age});
}


class TablePdfApi {
  static Future<File> generateTablePdf() async {
    final pdf = Document();
    final headers = ['Name', 'Age'];

    final users = [
      User(name: 'John Doe', age: 30),
      User(name: 'Jane Doe', age: 25),
      User(name: 'John Smith', age: 40),
    ];
    final data = users.map((user) => [user.name, user.age.toString()]).toList();

    pdf.addPage(
      Page(
        build: (context) => TableHelper.fromTextArray(
          data: data,
          headers: headers,
          cellAlignment: Alignment.center,
          tableWidth: TableWidth.max,
          cellHeight: 100,
          border: TableBorder.all(width: 5),
          headerStyle: TextStyle(fontSize:50, fontWeight: FontWeight.bold),
          cellStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
        ),),
    );
    return SaveAndOpenPdf.savePdf(name: 'invoice.pdf', pdf: pdf);
  }
}
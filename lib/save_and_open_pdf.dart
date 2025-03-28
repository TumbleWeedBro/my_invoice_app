import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

class SaveAndOpenPdf {

  static Future<File> savePdf({
    required String name,
    required Document pdf,
  }) async {
    final root = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();
        final file = File('${root!.path}/$name');
        await file.writeAsBytes(await pdf.save());
        debugPrint('${root.path}/$name');
        return file;
  }

  static Future<void> openPdf(File file) async {
    final filePath = file.path;
    await OpenFile.open(filePath);
  }

  static void openDocument(File tablePdf) {}
}
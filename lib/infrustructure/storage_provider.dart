import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'package:logger/logger.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_storage_provider.dart';
import 'package:printer/domain/print_doc/print_doc.dart';

class StorageProvider extends IStorageProvider {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String collection = 'docs';
  @override
  Future<Either<Failure, Unit>> addData(PrintDoc doc) async {
    try {
      final DocumentReference<Map<String, dynamic>> repsonse =
          await firestore.collection(collection).add(doc.toJson());

      Logger().i(repsonse);
      return right(unit);
    } catch (e) {
      Logger().e(e);
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<PrintDoc>>> loadData() async {
    final QuerySnapshot<Map<String, dynamic>> repsonse =
        await firestore.collection(collection).get();

    final List<PrintDoc> docs = List<PrintDoc>.from(
        repsonse.docs.map((e) => PrintDoc.fromJson(e.data())));

    return right(docs);
  }
}

import 'package:dartz/dartz.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/i_storage_provider.dart';
import 'package:printer/domain/print_doc/print_doc.dart';


class FakeStorageProvider extends IStorageProvider {
  @override
  Future<Either<Failure, Unit>> addData(PrintDoc doc) async {
    await Future.delayed(const Duration(seconds: 1));
    return right(unit);
    // try {
    //   final DocumentReference<Map<String, dynamic>> repsonse =
    //       await firestore.collection(collection).add(doc.toJson());

    //   Logger().i(repsonse);
    //   return right(unit);
    // } catch (e) {
    //   Logger().e(e);
    //   return left(Failure(e.toString()));
    // }
  }

  @override
  Future<Either<Failure, List<PrintDoc>>> loadData() async {
    await Future.delayed(const Duration(seconds: 1));
    return right([]);
  }
}

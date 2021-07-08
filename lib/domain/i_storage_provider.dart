import 'package:dartz/dartz.dart';
import 'package:printer/domain/failure/failure.dart';
import 'package:printer/domain/print_doc/print_doc.dart';

abstract class IStorageProvider {
  Future<Either<Failure, List<PrintDoc>>> loadData();
  Future<Either<Failure, Unit>> addData(PrintDoc doc);
}

import 'package:collection/collection.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:tiki_sdk_dart/src/transaction/transaction_model.dart';

class TransactionRepository {
  final Database _db;

  TransactionRepository(this._db);

  Future<void> cache(TransactionModel transaction){
    throw UnimplementedError();
  }

  TransactionModel getFromCache(String address, String signature) {
    throw UnimplementedError();
  }

  Future<void> deleteFromCache(TransactionModel transaction){
    throw UnimplementedError();
  }
}

import 'package:drift/drift.dart';

class CachedDocs extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get orderId => integer()();
  TextColumn get imageOne => text().nullable()();
  TextColumn get imageTwo => text().nullable()();
  TextColumn get videoOne => text().nullable()();
  TextColumn get videoTwo => text().nullable()();
  RealColumn get latitude => real().nullable()();
  RealColumn get longitude => real().nullable()();
  RealColumn get shippingCost => real().nullable()();
  TextColumn get uploadStatus => text()(); 
  RealColumn get uploadProgress => real().withDefault(const Constant(0.0))();
}

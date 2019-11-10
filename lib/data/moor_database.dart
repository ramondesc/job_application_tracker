import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

// Moor works by source gen. This file will all the generated code.
part 'moor_database.g.dart';

class Offers extends Table {
  // autoIncrement automatically sets this to be the primary key
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  TextColumn get company => text().withLength(min: 1, max: 50)();
  // DateTime is not natively supported by SQLite
  // Moor converts it to & from UNIX seconds
  DateTimeColumn get applicationDate => dateTime().nullable()();
}


@UseMoor(tables: [Offers], daos: [OfferDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 2;
}


// Denote which tables this DAO can access
@UseDao(tables: [Offers])
class OfferDao extends DatabaseAccessor<AppDatabase> with _$OfferDaoMixin {
  final AppDatabase db;

  // Called by the AppDatabase class
  OfferDao(this.db) : super(db);

  Future<List<Offer>> getAllOffers() => select(offers).get();
  Stream<List<Offer>> watchAllOffers() => select(offers).watch();
  Future insertOffer(Insertable<Offer> offer) => into(offers).insert(offer);
  Future updateOffer(Insertable<Offer> offer) => update(offers).replace(offer);
  Future deleteOffer(Insertable<Offer> offer) => delete(offers).delete(offer);
}
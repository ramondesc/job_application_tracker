import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

// Moor works by source gen. This file will all the generated code.
part 'moor_database.g.dart';

class Offers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 50)();
  TextColumn get company => text().withLength(min: 1, max: 50)();
  TextColumn get status => text().withLength(min: 1, max: 50)();
  RealColumn get salary => real()();
  TextColumn get platform => text().withLength(min: 1, max: 50)();
  TextColumn get regime => text().withLength(min: 1, max: 50)();
  DateTimeColumn get applicationDate => dateTime().nullable()();
}

class Skills extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
}

class SkillsOffer extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get offerId => integer()();
  IntColumn get skillId => integer()();
}

@UseMoor(tables: [Offers], daos: [OfferDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
      path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;
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

  Stream<List<Offer>> watchOfferByStatus(String status) {
    return (select(offers)
      ..where((o) => o.status.equals(status)))
        .watch();
  }

}
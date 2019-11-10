// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Offer extends DataClass implements Insertable<Offer> {
  final int id;
  final String title;
  final String company;
  final DateTime applicationDate;
  Offer(
      {@required this.id,
      @required this.title,
      @required this.company,
      this.applicationDate});
  factory Offer.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Offer(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      company:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}company']),
      applicationDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}application_date']),
    );
  }
  factory Offer.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Offer(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      company: serializer.fromJson<String>(json['company']),
      applicationDate: serializer.fromJson<DateTime>(json['applicationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'company': serializer.toJson<String>(company),
      'applicationDate': serializer.toJson<DateTime>(applicationDate),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Offer>>(bool nullToAbsent) {
    return OffersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      applicationDate: applicationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(applicationDate),
    ) as T;
  }

  Offer copyWith(
          {int id, String title, String company, DateTime applicationDate}) =>
      Offer(
        id: id ?? this.id,
        title: title ?? this.title,
        company: company ?? this.company,
        applicationDate: applicationDate ?? this.applicationDate,
      );
  @override
  String toString() {
    return (StringBuffer('Offer(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('company: $company, ')
          ..write('applicationDate: $applicationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode, $mrjc(company.hashCode, applicationDate.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Offer &&
          other.id == id &&
          other.title == title &&
          other.company == company &&
          other.applicationDate == applicationDate);
}

class OffersCompanion extends UpdateCompanion<Offer> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> company;
  final Value<DateTime> applicationDate;
  const OffersCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.company = const Value.absent(),
    this.applicationDate = const Value.absent(),
  });
  OffersCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> company,
      Value<DateTime> applicationDate}) {
    return OffersCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      company: company ?? this.company,
      applicationDate: applicationDate ?? this.applicationDate,
    );
  }
}

class $OffersTable extends Offers with TableInfo<$OffersTable, Offer> {
  final GeneratedDatabase _db;
  final String _alias;
  $OffersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _companyMeta = const VerificationMeta('company');
  GeneratedTextColumn _company;
  @override
  GeneratedTextColumn get company => _company ??= _constructCompany();
  GeneratedTextColumn _constructCompany() {
    return GeneratedTextColumn('company', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _applicationDateMeta =
      const VerificationMeta('applicationDate');
  GeneratedDateTimeColumn _applicationDate;
  @override
  GeneratedDateTimeColumn get applicationDate =>
      _applicationDate ??= _constructApplicationDate();
  GeneratedDateTimeColumn _constructApplicationDate() {
    return GeneratedDateTimeColumn(
      'application_date',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, company, applicationDate];
  @override
  $OffersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'offers';
  @override
  final String actualTableName = 'offers';
  @override
  VerificationContext validateIntegrity(OffersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (title.isRequired && isInserting) {
      context.missing(_titleMeta);
    }
    if (d.company.present) {
      context.handle(_companyMeta,
          company.isAcceptableValue(d.company.value, _companyMeta));
    } else if (company.isRequired && isInserting) {
      context.missing(_companyMeta);
    }
    if (d.applicationDate.present) {
      context.handle(
          _applicationDateMeta,
          applicationDate.isAcceptableValue(
              d.applicationDate.value, _applicationDateMeta));
    } else if (applicationDate.isRequired && isInserting) {
      context.missing(_applicationDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Offer map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Offer.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(OffersCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.company.present) {
      map['company'] = Variable<String, StringType>(d.company.value);
    }
    if (d.applicationDate.present) {
      map['application_date'] =
          Variable<DateTime, DateTimeType>(d.applicationDate.value);
    }
    return map;
  }

  @override
  $OffersTable createAlias(String alias) {
    return $OffersTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $OffersTable _offers;
  $OffersTable get offers => _offers ??= $OffersTable(this);
  OfferDao _offerDao;
  OfferDao get offerDao => _offerDao ??= OfferDao(this as AppDatabase);
  @override
  List<TableInfo> get allTables => [offers];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$OfferDaoMixin on DatabaseAccessor<AppDatabase> {
  $OffersTable get offers => db.offers;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Offer extends DataClass implements Insertable<Offer> {
  final int id;
  final String title;
  final String company;
  final String status;
  final double salary;
  final String platform;
  final String regime;
  final DateTime applicationDate;
  Offer(
      {@required this.id,
      @required this.title,
      @required this.company,
      @required this.status,
      @required this.salary,
      @required this.platform,
      @required this.regime,
      this.applicationDate});
  factory Offer.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Offer(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      company:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}company']),
      status:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}status']),
      salary:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}salary']),
      platform: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}platform']),
      regime:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}regime']),
      applicationDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}application_date']),
    );
  }
  factory Offer.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Offer(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      company: serializer.fromJson<String>(json['company']),
      status: serializer.fromJson<String>(json['status']),
      salary: serializer.fromJson<double>(json['salary']),
      platform: serializer.fromJson<String>(json['platform']),
      regime: serializer.fromJson<String>(json['regime']),
      applicationDate: serializer.fromJson<DateTime>(json['applicationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'company': serializer.toJson<String>(company),
      'status': serializer.toJson<String>(status),
      'salary': serializer.toJson<double>(salary),
      'platform': serializer.toJson<String>(platform),
      'regime': serializer.toJson<String>(regime),
      'applicationDate': serializer.toJson<DateTime>(applicationDate),
    };
  }

  @override
  OffersCompanion createCompanion(bool nullToAbsent) {
    return OffersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      status:
          status == null && nullToAbsent ? const Value.absent() : Value(status),
      salary:
          salary == null && nullToAbsent ? const Value.absent() : Value(salary),
      platform: platform == null && nullToAbsent
          ? const Value.absent()
          : Value(platform),
      regime:
          regime == null && nullToAbsent ? const Value.absent() : Value(regime),
      applicationDate: applicationDate == null && nullToAbsent
          ? const Value.absent()
          : Value(applicationDate),
    );
  }

  Offer copyWith(
          {int id,
          String title,
          String company,
          String status,
          double salary,
          String platform,
          String regime,
          DateTime applicationDate}) =>
      Offer(
        id: id ?? this.id,
        title: title ?? this.title,
        company: company ?? this.company,
        status: status ?? this.status,
        salary: salary ?? this.salary,
        platform: platform ?? this.platform,
        regime: regime ?? this.regime,
        applicationDate: applicationDate ?? this.applicationDate,
      );
  @override
  String toString() {
    return (StringBuffer('Offer(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('company: $company, ')
          ..write('status: $status, ')
          ..write('salary: $salary, ')
          ..write('platform: $platform, ')
          ..write('regime: $regime, ')
          ..write('applicationDate: $applicationDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              company.hashCode,
              $mrjc(
                  status.hashCode,
                  $mrjc(
                      salary.hashCode,
                      $mrjc(
                          platform.hashCode,
                          $mrjc(
                              regime.hashCode, applicationDate.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Offer &&
          other.id == this.id &&
          other.title == this.title &&
          other.company == this.company &&
          other.status == this.status &&
          other.salary == this.salary &&
          other.platform == this.platform &&
          other.regime == this.regime &&
          other.applicationDate == this.applicationDate);
}

class OffersCompanion extends UpdateCompanion<Offer> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> company;
  final Value<String> status;
  final Value<double> salary;
  final Value<String> platform;
  final Value<String> regime;
  final Value<DateTime> applicationDate;
  const OffersCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.company = const Value.absent(),
    this.status = const Value.absent(),
    this.salary = const Value.absent(),
    this.platform = const Value.absent(),
    this.regime = const Value.absent(),
    this.applicationDate = const Value.absent(),
  });
  OffersCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required String company,
    @required String status,
    @required double salary,
    @required String platform,
    @required String regime,
    this.applicationDate = const Value.absent(),
  })  : title = Value(title),
        company = Value(company),
        status = Value(status),
        salary = Value(salary),
        platform = Value(platform),
        regime = Value(regime);
  OffersCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> company,
      Value<String> status,
      Value<double> salary,
      Value<String> platform,
      Value<String> regime,
      Value<DateTime> applicationDate}) {
    return OffersCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      company: company ?? this.company,
      status: status ?? this.status,
      salary: salary ?? this.salary,
      platform: platform ?? this.platform,
      regime: regime ?? this.regime,
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

  final VerificationMeta _statusMeta = const VerificationMeta('status');
  GeneratedTextColumn _status;
  @override
  GeneratedTextColumn get status => _status ??= _constructStatus();
  GeneratedTextColumn _constructStatus() {
    return GeneratedTextColumn('status', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _salaryMeta = const VerificationMeta('salary');
  GeneratedRealColumn _salary;
  @override
  GeneratedRealColumn get salary => _salary ??= _constructSalary();
  GeneratedRealColumn _constructSalary() {
    return GeneratedRealColumn(
      'salary',
      $tableName,
      false,
    );
  }

  final VerificationMeta _platformMeta = const VerificationMeta('platform');
  GeneratedTextColumn _platform;
  @override
  GeneratedTextColumn get platform => _platform ??= _constructPlatform();
  GeneratedTextColumn _constructPlatform() {
    return GeneratedTextColumn('platform', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _regimeMeta = const VerificationMeta('regime');
  GeneratedTextColumn _regime;
  @override
  GeneratedTextColumn get regime => _regime ??= _constructRegime();
  GeneratedTextColumn _constructRegime() {
    return GeneratedTextColumn('regime', $tableName, false,
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
  List<GeneratedColumn> get $columns =>
      [id, title, company, status, salary, platform, regime, applicationDate];
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
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.company.present) {
      context.handle(_companyMeta,
          company.isAcceptableValue(d.company.value, _companyMeta));
    } else if (isInserting) {
      context.missing(_companyMeta);
    }
    if (d.status.present) {
      context.handle(
          _statusMeta, status.isAcceptableValue(d.status.value, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (d.salary.present) {
      context.handle(
          _salaryMeta, salary.isAcceptableValue(d.salary.value, _salaryMeta));
    } else if (isInserting) {
      context.missing(_salaryMeta);
    }
    if (d.platform.present) {
      context.handle(_platformMeta,
          platform.isAcceptableValue(d.platform.value, _platformMeta));
    } else if (isInserting) {
      context.missing(_platformMeta);
    }
    if (d.regime.present) {
      context.handle(
          _regimeMeta, regime.isAcceptableValue(d.regime.value, _regimeMeta));
    } else if (isInserting) {
      context.missing(_regimeMeta);
    }
    if (d.applicationDate.present) {
      context.handle(
          _applicationDateMeta,
          applicationDate.isAcceptableValue(
              d.applicationDate.value, _applicationDateMeta));
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
    if (d.status.present) {
      map['status'] = Variable<String, StringType>(d.status.value);
    }
    if (d.salary.present) {
      map['salary'] = Variable<double, RealType>(d.salary.value);
    }
    if (d.platform.present) {
      map['platform'] = Variable<String, StringType>(d.platform.value);
    }
    if (d.regime.present) {
      map['regime'] = Variable<String, StringType>(d.regime.value);
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
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $OffersTable _offers;
  $OffersTable get offers => _offers ??= $OffersTable(this);
  OfferDao _offerDao;
  OfferDao get offerDao => _offerDao ??= OfferDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [offers];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$OfferDaoMixin on DatabaseAccessor<AppDatabase> {
  $OffersTable get offers => db.offers;
}

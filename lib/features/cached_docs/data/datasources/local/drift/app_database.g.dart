// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CachedDocsTable extends CachedDocs
    with TableInfo<$CachedDocsTable, CachedDoc> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedDocsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _orderIdMeta = const VerificationMeta(
    'orderId',
  );
  @override
  late final GeneratedColumn<int> orderId = GeneratedColumn<int>(
    'order_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageOneMeta = const VerificationMeta(
    'imageOne',
  );
  @override
  late final GeneratedColumn<String> imageOne = GeneratedColumn<String>(
    'image_one',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _imageTwoMeta = const VerificationMeta(
    'imageTwo',
  );
  @override
  late final GeneratedColumn<String> imageTwo = GeneratedColumn<String>(
    'image_two',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _videoOneMeta = const VerificationMeta(
    'videoOne',
  );
  @override
  late final GeneratedColumn<String> videoOne = GeneratedColumn<String>(
    'video_one',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _videoTwoMeta = const VerificationMeta(
    'videoTwo',
  );
  @override
  late final GeneratedColumn<String> videoTwo = GeneratedColumn<String>(
    'video_two',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _shippingCostMeta = const VerificationMeta(
    'shippingCost',
  );
  @override
  late final GeneratedColumn<double> shippingCost = GeneratedColumn<double>(
    'shipping_cost',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uploadStatusMeta = const VerificationMeta(
    'uploadStatus',
  );
  @override
  late final GeneratedColumn<String> uploadStatus = GeneratedColumn<String>(
    'upload_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _uploadProgressMeta = const VerificationMeta(
    'uploadProgress',
  );
  @override
  late final GeneratedColumn<double> uploadProgress = GeneratedColumn<double>(
    'upload_progress',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0.0),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    orderId,
    imageOne,
    imageTwo,
    videoOne,
    videoTwo,
    latitude,
    longitude,
    shippingCost,
    uploadStatus,
    uploadProgress,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_docs';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedDoc> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('order_id')) {
      context.handle(
        _orderIdMeta,
        orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta),
      );
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('image_one')) {
      context.handle(
        _imageOneMeta,
        imageOne.isAcceptableOrUnknown(data['image_one']!, _imageOneMeta),
      );
    }
    if (data.containsKey('image_two')) {
      context.handle(
        _imageTwoMeta,
        imageTwo.isAcceptableOrUnknown(data['image_two']!, _imageTwoMeta),
      );
    }
    if (data.containsKey('video_one')) {
      context.handle(
        _videoOneMeta,
        videoOne.isAcceptableOrUnknown(data['video_one']!, _videoOneMeta),
      );
    }
    if (data.containsKey('video_two')) {
      context.handle(
        _videoTwoMeta,
        videoTwo.isAcceptableOrUnknown(data['video_two']!, _videoTwoMeta),
      );
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('shipping_cost')) {
      context.handle(
        _shippingCostMeta,
        shippingCost.isAcceptableOrUnknown(
          data['shipping_cost']!,
          _shippingCostMeta,
        ),
      );
    }
    if (data.containsKey('upload_status')) {
      context.handle(
        _uploadStatusMeta,
        uploadStatus.isAcceptableOrUnknown(
          data['upload_status']!,
          _uploadStatusMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_uploadStatusMeta);
    }
    if (data.containsKey('upload_progress')) {
      context.handle(
        _uploadProgressMeta,
        uploadProgress.isAcceptableOrUnknown(
          data['upload_progress']!,
          _uploadProgressMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CachedDoc map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedDoc(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      orderId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}order_id'],
      )!,
      imageOne: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_one'],
      ),
      imageTwo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_two'],
      ),
      videoOne: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}video_one'],
      ),
      videoTwo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}video_two'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      shippingCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}shipping_cost'],
      ),
      uploadStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}upload_status'],
      )!,
      uploadProgress: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}upload_progress'],
      )!,
    );
  }

  @override
  $CachedDocsTable createAlias(String alias) {
    return $CachedDocsTable(attachedDatabase, alias);
  }
}

class CachedDoc extends DataClass implements Insertable<CachedDoc> {
  final int id;
  final int orderId;
  final String? imageOne;
  final String? imageTwo;
  final String? videoOne;
  final String? videoTwo;
  final double? latitude;
  final double? longitude;
  final double? shippingCost;
  final String uploadStatus;
  final double uploadProgress;
  const CachedDoc({
    required this.id,
    required this.orderId,
    this.imageOne,
    this.imageTwo,
    this.videoOne,
    this.videoTwo,
    this.latitude,
    this.longitude,
    this.shippingCost,
    required this.uploadStatus,
    required this.uploadProgress,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['order_id'] = Variable<int>(orderId);
    if (!nullToAbsent || imageOne != null) {
      map['image_one'] = Variable<String>(imageOne);
    }
    if (!nullToAbsent || imageTwo != null) {
      map['image_two'] = Variable<String>(imageTwo);
    }
    if (!nullToAbsent || videoOne != null) {
      map['video_one'] = Variable<String>(videoOne);
    }
    if (!nullToAbsent || videoTwo != null) {
      map['video_two'] = Variable<String>(videoTwo);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    if (!nullToAbsent || shippingCost != null) {
      map['shipping_cost'] = Variable<double>(shippingCost);
    }
    map['upload_status'] = Variable<String>(uploadStatus);
    map['upload_progress'] = Variable<double>(uploadProgress);
    return map;
  }

  CachedDocsCompanion toCompanion(bool nullToAbsent) {
    return CachedDocsCompanion(
      id: Value(id),
      orderId: Value(orderId),
      imageOne: imageOne == null && nullToAbsent
          ? const Value.absent()
          : Value(imageOne),
      imageTwo: imageTwo == null && nullToAbsent
          ? const Value.absent()
          : Value(imageTwo),
      videoOne: videoOne == null && nullToAbsent
          ? const Value.absent()
          : Value(videoOne),
      videoTwo: videoTwo == null && nullToAbsent
          ? const Value.absent()
          : Value(videoTwo),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      shippingCost: shippingCost == null && nullToAbsent
          ? const Value.absent()
          : Value(shippingCost),
      uploadStatus: Value(uploadStatus),
      uploadProgress: Value(uploadProgress),
    );
  }

  factory CachedDoc.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedDoc(
      id: serializer.fromJson<int>(json['id']),
      orderId: serializer.fromJson<int>(json['orderId']),
      imageOne: serializer.fromJson<String?>(json['imageOne']),
      imageTwo: serializer.fromJson<String?>(json['imageTwo']),
      videoOne: serializer.fromJson<String?>(json['videoOne']),
      videoTwo: serializer.fromJson<String?>(json['videoTwo']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      shippingCost: serializer.fromJson<double?>(json['shippingCost']),
      uploadStatus: serializer.fromJson<String>(json['uploadStatus']),
      uploadProgress: serializer.fromJson<double>(json['uploadProgress']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orderId': serializer.toJson<int>(orderId),
      'imageOne': serializer.toJson<String?>(imageOne),
      'imageTwo': serializer.toJson<String?>(imageTwo),
      'videoOne': serializer.toJson<String?>(videoOne),
      'videoTwo': serializer.toJson<String?>(videoTwo),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'shippingCost': serializer.toJson<double?>(shippingCost),
      'uploadStatus': serializer.toJson<String>(uploadStatus),
      'uploadProgress': serializer.toJson<double>(uploadProgress),
    };
  }

  CachedDoc copyWith({
    int? id,
    int? orderId,
    Value<String?> imageOne = const Value.absent(),
    Value<String?> imageTwo = const Value.absent(),
    Value<String?> videoOne = const Value.absent(),
    Value<String?> videoTwo = const Value.absent(),
    Value<double?> latitude = const Value.absent(),
    Value<double?> longitude = const Value.absent(),
    Value<double?> shippingCost = const Value.absent(),
    String? uploadStatus,
    double? uploadProgress,
  }) => CachedDoc(
    id: id ?? this.id,
    orderId: orderId ?? this.orderId,
    imageOne: imageOne.present ? imageOne.value : this.imageOne,
    imageTwo: imageTwo.present ? imageTwo.value : this.imageTwo,
    videoOne: videoOne.present ? videoOne.value : this.videoOne,
    videoTwo: videoTwo.present ? videoTwo.value : this.videoTwo,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    shippingCost: shippingCost.present ? shippingCost.value : this.shippingCost,
    uploadStatus: uploadStatus ?? this.uploadStatus,
    uploadProgress: uploadProgress ?? this.uploadProgress,
  );
  CachedDoc copyWithCompanion(CachedDocsCompanion data) {
    return CachedDoc(
      id: data.id.present ? data.id.value : this.id,
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
      imageOne: data.imageOne.present ? data.imageOne.value : this.imageOne,
      imageTwo: data.imageTwo.present ? data.imageTwo.value : this.imageTwo,
      videoOne: data.videoOne.present ? data.videoOne.value : this.videoOne,
      videoTwo: data.videoTwo.present ? data.videoTwo.value : this.videoTwo,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      shippingCost: data.shippingCost.present
          ? data.shippingCost.value
          : this.shippingCost,
      uploadStatus: data.uploadStatus.present
          ? data.uploadStatus.value
          : this.uploadStatus,
      uploadProgress: data.uploadProgress.present
          ? data.uploadProgress.value
          : this.uploadProgress,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CachedDoc(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('imageOne: $imageOne, ')
          ..write('imageTwo: $imageTwo, ')
          ..write('videoOne: $videoOne, ')
          ..write('videoTwo: $videoTwo, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('shippingCost: $shippingCost, ')
          ..write('uploadStatus: $uploadStatus, ')
          ..write('uploadProgress: $uploadProgress')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    orderId,
    imageOne,
    imageTwo,
    videoOne,
    videoTwo,
    latitude,
    longitude,
    shippingCost,
    uploadStatus,
    uploadProgress,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedDoc &&
          other.id == this.id &&
          other.orderId == this.orderId &&
          other.imageOne == this.imageOne &&
          other.imageTwo == this.imageTwo &&
          other.videoOne == this.videoOne &&
          other.videoTwo == this.videoTwo &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.shippingCost == this.shippingCost &&
          other.uploadStatus == this.uploadStatus &&
          other.uploadProgress == this.uploadProgress);
}

class CachedDocsCompanion extends UpdateCompanion<CachedDoc> {
  final Value<int> id;
  final Value<int> orderId;
  final Value<String?> imageOne;
  final Value<String?> imageTwo;
  final Value<String?> videoOne;
  final Value<String?> videoTwo;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<double?> shippingCost;
  final Value<String> uploadStatus;
  final Value<double> uploadProgress;
  const CachedDocsCompanion({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.imageOne = const Value.absent(),
    this.imageTwo = const Value.absent(),
    this.videoOne = const Value.absent(),
    this.videoTwo = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.shippingCost = const Value.absent(),
    this.uploadStatus = const Value.absent(),
    this.uploadProgress = const Value.absent(),
  });
  CachedDocsCompanion.insert({
    this.id = const Value.absent(),
    required int orderId,
    this.imageOne = const Value.absent(),
    this.imageTwo = const Value.absent(),
    this.videoOne = const Value.absent(),
    this.videoTwo = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.shippingCost = const Value.absent(),
    required String uploadStatus,
    this.uploadProgress = const Value.absent(),
  }) : orderId = Value(orderId),
       uploadStatus = Value(uploadStatus);
  static Insertable<CachedDoc> custom({
    Expression<int>? id,
    Expression<int>? orderId,
    Expression<String>? imageOne,
    Expression<String>? imageTwo,
    Expression<String>? videoOne,
    Expression<String>? videoTwo,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<double>? shippingCost,
    Expression<String>? uploadStatus,
    Expression<double>? uploadProgress,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderId != null) 'order_id': orderId,
      if (imageOne != null) 'image_one': imageOne,
      if (imageTwo != null) 'image_two': imageTwo,
      if (videoOne != null) 'video_one': videoOne,
      if (videoTwo != null) 'video_two': videoTwo,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (shippingCost != null) 'shipping_cost': shippingCost,
      if (uploadStatus != null) 'upload_status': uploadStatus,
      if (uploadProgress != null) 'upload_progress': uploadProgress,
    });
  }

  CachedDocsCompanion copyWith({
    Value<int>? id,
    Value<int>? orderId,
    Value<String?>? imageOne,
    Value<String?>? imageTwo,
    Value<String?>? videoOne,
    Value<String?>? videoTwo,
    Value<double?>? latitude,
    Value<double?>? longitude,
    Value<double?>? shippingCost,
    Value<String>? uploadStatus,
    Value<double>? uploadProgress,
  }) {
    return CachedDocsCompanion(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      imageOne: imageOne ?? this.imageOne,
      imageTwo: imageTwo ?? this.imageTwo,
      videoOne: videoOne ?? this.videoOne,
      videoTwo: videoTwo ?? this.videoTwo,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      shippingCost: shippingCost ?? this.shippingCost,
      uploadStatus: uploadStatus ?? this.uploadStatus,
      uploadProgress: uploadProgress ?? this.uploadProgress,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<int>(orderId.value);
    }
    if (imageOne.present) {
      map['image_one'] = Variable<String>(imageOne.value);
    }
    if (imageTwo.present) {
      map['image_two'] = Variable<String>(imageTwo.value);
    }
    if (videoOne.present) {
      map['video_one'] = Variable<String>(videoOne.value);
    }
    if (videoTwo.present) {
      map['video_two'] = Variable<String>(videoTwo.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (shippingCost.present) {
      map['shipping_cost'] = Variable<double>(shippingCost.value);
    }
    if (uploadStatus.present) {
      map['upload_status'] = Variable<String>(uploadStatus.value);
    }
    if (uploadProgress.present) {
      map['upload_progress'] = Variable<double>(uploadProgress.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CachedDocsCompanion(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('imageOne: $imageOne, ')
          ..write('imageTwo: $imageTwo, ')
          ..write('videoOne: $videoOne, ')
          ..write('videoTwo: $videoTwo, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('shippingCost: $shippingCost, ')
          ..write('uploadStatus: $uploadStatus, ')
          ..write('uploadProgress: $uploadProgress')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CachedDocsTable cachedDocs = $CachedDocsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cachedDocs];
}

typedef $$CachedDocsTableCreateCompanionBuilder =
    CachedDocsCompanion Function({
      Value<int> id,
      required int orderId,
      Value<String?> imageOne,
      Value<String?> imageTwo,
      Value<String?> videoOne,
      Value<String?> videoTwo,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<double?> shippingCost,
      required String uploadStatus,
      Value<double> uploadProgress,
    });
typedef $$CachedDocsTableUpdateCompanionBuilder =
    CachedDocsCompanion Function({
      Value<int> id,
      Value<int> orderId,
      Value<String?> imageOne,
      Value<String?> imageTwo,
      Value<String?> videoOne,
      Value<String?> videoTwo,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<double?> shippingCost,
      Value<String> uploadStatus,
      Value<double> uploadProgress,
    });

class $$CachedDocsTableFilterComposer
    extends Composer<_$AppDatabase, $CachedDocsTable> {
  $$CachedDocsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get orderId => $composableBuilder(
    column: $table.orderId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageOne => $composableBuilder(
    column: $table.imageOne,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageTwo => $composableBuilder(
    column: $table.imageTwo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get videoOne => $composableBuilder(
    column: $table.videoOne,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get videoTwo => $composableBuilder(
    column: $table.videoTwo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get shippingCost => $composableBuilder(
    column: $table.shippingCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get uploadProgress => $composableBuilder(
    column: $table.uploadProgress,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CachedDocsTableOrderingComposer
    extends Composer<_$AppDatabase, $CachedDocsTable> {
  $$CachedDocsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get orderId => $composableBuilder(
    column: $table.orderId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageOne => $composableBuilder(
    column: $table.imageOne,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageTwo => $composableBuilder(
    column: $table.imageTwo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get videoOne => $composableBuilder(
    column: $table.videoOne,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get videoTwo => $composableBuilder(
    column: $table.videoTwo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get shippingCost => $composableBuilder(
    column: $table.shippingCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get uploadProgress => $composableBuilder(
    column: $table.uploadProgress,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CachedDocsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CachedDocsTable> {
  $$CachedDocsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get orderId =>
      $composableBuilder(column: $table.orderId, builder: (column) => column);

  GeneratedColumn<String> get imageOne =>
      $composableBuilder(column: $table.imageOne, builder: (column) => column);

  GeneratedColumn<String> get imageTwo =>
      $composableBuilder(column: $table.imageTwo, builder: (column) => column);

  GeneratedColumn<String> get videoOne =>
      $composableBuilder(column: $table.videoOne, builder: (column) => column);

  GeneratedColumn<String> get videoTwo =>
      $composableBuilder(column: $table.videoTwo, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<double> get shippingCost => $composableBuilder(
    column: $table.shippingCost,
    builder: (column) => column,
  );

  GeneratedColumn<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => column,
  );

  GeneratedColumn<double> get uploadProgress => $composableBuilder(
    column: $table.uploadProgress,
    builder: (column) => column,
  );
}

class $$CachedDocsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CachedDocsTable,
          CachedDoc,
          $$CachedDocsTableFilterComposer,
          $$CachedDocsTableOrderingComposer,
          $$CachedDocsTableAnnotationComposer,
          $$CachedDocsTableCreateCompanionBuilder,
          $$CachedDocsTableUpdateCompanionBuilder,
          (
            CachedDoc,
            BaseReferences<_$AppDatabase, $CachedDocsTable, CachedDoc>,
          ),
          CachedDoc,
          PrefetchHooks Function()
        > {
  $$CachedDocsTableTableManager(_$AppDatabase db, $CachedDocsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedDocsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedDocsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedDocsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> orderId = const Value.absent(),
                Value<String?> imageOne = const Value.absent(),
                Value<String?> imageTwo = const Value.absent(),
                Value<String?> videoOne = const Value.absent(),
                Value<String?> videoTwo = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<double?> shippingCost = const Value.absent(),
                Value<String> uploadStatus = const Value.absent(),
                Value<double> uploadProgress = const Value.absent(),
              }) => CachedDocsCompanion(
                id: id,
                orderId: orderId,
                imageOne: imageOne,
                imageTwo: imageTwo,
                videoOne: videoOne,
                videoTwo: videoTwo,
                latitude: latitude,
                longitude: longitude,
                shippingCost: shippingCost,
                uploadStatus: uploadStatus,
                uploadProgress: uploadProgress,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int orderId,
                Value<String?> imageOne = const Value.absent(),
                Value<String?> imageTwo = const Value.absent(),
                Value<String?> videoOne = const Value.absent(),
                Value<String?> videoTwo = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<double?> shippingCost = const Value.absent(),
                required String uploadStatus,
                Value<double> uploadProgress = const Value.absent(),
              }) => CachedDocsCompanion.insert(
                id: id,
                orderId: orderId,
                imageOne: imageOne,
                imageTwo: imageTwo,
                videoOne: videoOne,
                videoTwo: videoTwo,
                latitude: latitude,
                longitude: longitude,
                shippingCost: shippingCost,
                uploadStatus: uploadStatus,
                uploadProgress: uploadProgress,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CachedDocsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CachedDocsTable,
      CachedDoc,
      $$CachedDocsTableFilterComposer,
      $$CachedDocsTableOrderingComposer,
      $$CachedDocsTableAnnotationComposer,
      $$CachedDocsTableCreateCompanionBuilder,
      $$CachedDocsTableUpdateCompanionBuilder,
      (CachedDoc, BaseReferences<_$AppDatabase, $CachedDocsTable, CachedDoc>),
      CachedDoc,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CachedDocsTableTableManager get cachedDocs =>
      $$CachedDocsTableTableManager(_db, _db.cachedDocs);
}

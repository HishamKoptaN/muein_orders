// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ItemsTableTable extends ItemsTable
    with TableInfo<$ItemsTableTable, ItemEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
    );
  }

  @override
  $ItemsTableTable createAlias(String alias) {
    return $ItemsTableTable(attachedDatabase, alias);
  }
}

class ItemEntry extends DataClass implements Insertable<ItemEntry> {
  final int id;
  const ItemEntry({required this.id});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    return map;
  }

  ItemsTableCompanion toCompanion(bool nullToAbsent) {
    return ItemsTableCompanion(id: Value(id));
  }

  factory ItemEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemEntry(id: serializer.fromJson<int>(json['id']));
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{'id': serializer.toJson<int>(id)};
  }

  ItemEntry copyWith({int? id}) => ItemEntry(id: id ?? this.id);
  ItemEntry copyWithCompanion(ItemsTableCompanion data) {
    return ItemEntry(id: data.id.present ? data.id.value : this.id);
  }

  @override
  String toString() {
    return (StringBuffer('ItemEntry(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => id.hashCode;
  @override
  bool operator ==(Object other) =>
      identical(this, other) || (other is ItemEntry && other.id == this.id);
}

class ItemsTableCompanion extends UpdateCompanion<ItemEntry> {
  final Value<int> id;
  const ItemsTableCompanion({this.id = const Value.absent()});
  ItemsTableCompanion.insert({this.id = const Value.absent()});
  static Insertable<ItemEntry> custom({Expression<int>? id}) {
    return RawValuesInsertable({if (id != null) 'id': id});
  }

  ItemsTableCompanion copyWith({Value<int>? id}) {
    return ItemsTableCompanion(id: id ?? this.id);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsTableCompanion(')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $ItemUnitsTableTable extends ItemUnitsTable
    with TableInfo<$ItemUnitsTableTable, ItemUnitEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemUnitsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES items_table (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [id, itemId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_units_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemUnitEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemUnitEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemUnitEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}item_id'],
      )!,
    );
  }

  @override
  $ItemUnitsTableTable createAlias(String alias) {
    return $ItemUnitsTableTable(attachedDatabase, alias);
  }
}

class ItemUnitEntry extends DataClass implements Insertable<ItemUnitEntry> {
  final int id;
  final int itemId;
  const ItemUnitEntry({required this.id, required this.itemId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_id'] = Variable<int>(itemId);
    return map;
  }

  ItemUnitsTableCompanion toCompanion(bool nullToAbsent) {
    return ItemUnitsTableCompanion(id: Value(id), itemId: Value(itemId));
  }

  factory ItemUnitEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemUnitEntry(
      id: serializer.fromJson<int>(json['id']),
      itemId: serializer.fromJson<int>(json['itemId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemId': serializer.toJson<int>(itemId),
    };
  }

  ItemUnitEntry copyWith({int? id, int? itemId}) =>
      ItemUnitEntry(id: id ?? this.id, itemId: itemId ?? this.itemId);
  ItemUnitEntry copyWithCompanion(ItemUnitsTableCompanion data) {
    return ItemUnitEntry(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemUnitEntry(')
          ..write('id: $id, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, itemId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemUnitEntry &&
          other.id == this.id &&
          other.itemId == this.itemId);
}

class ItemUnitsTableCompanion extends UpdateCompanion<ItemUnitEntry> {
  final Value<int> id;
  final Value<int> itemId;
  const ItemUnitsTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
  });
  ItemUnitsTableCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
  }) : itemId = Value(itemId);
  static Insertable<ItemUnitEntry> custom({
    Expression<int>? id,
    Expression<int>? itemId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
    });
  }

  ItemUnitsTableCompanion copyWith({Value<int>? id, Value<int>? itemId}) {
    return ItemUnitsTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemUnitsTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId')
          ..write(')'))
        .toString();
  }
}

class $DocsTableTable extends DocsTable
    with TableInfo<$DocsTableTable, DocEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<int> unitId = GeneratedColumn<int>(
    'unit_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES item_units_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _uploadStatusMeta = const VerificationMeta(
    'uploadStatus',
  );
  @override
  late final GeneratedColumn<String> uploadStatus = GeneratedColumn<String>(
    'upload_status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _locationUploadStatusMeta =
      const VerificationMeta('locationUploadStatus');
  @override
  late final GeneratedColumn<String> locationUploadStatus =
      GeneratedColumn<String>(
        'location_upload_status',
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
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    unitId,
    uploadStatus,
    locationUploadStatus,
    latitude,
    longitude,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'docs_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<DocEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('unit_id')) {
      context.handle(
        _unitIdMeta,
        unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta),
      );
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('upload_status')) {
      context.handle(
        _uploadStatusMeta,
        uploadStatus.isAcceptableOrUnknown(
          data['upload_status']!,
          _uploadStatusMeta,
        ),
      );
    }
    if (data.containsKey('location_upload_status')) {
      context.handle(
        _locationUploadStatusMeta,
        locationUploadStatus.isAcceptableOrUnknown(
          data['location_upload_status']!,
          _locationUploadStatusMeta,
        ),
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
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DocEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      unitId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}unit_id'],
      )!,
      uploadStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}upload_status'],
      ),
      locationUploadStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_upload_status'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $DocsTableTable createAlias(String alias) {
    return $DocsTableTable(attachedDatabase, alias);
  }
}

class DocEntry extends DataClass implements Insertable<DocEntry> {
  final int id;
  final int unitId;
  final String? uploadStatus;
  final String? locationUploadStatus;
  final double? latitude;
  final double? longitude;
  final DateTime createdAt;
  const DocEntry({
    required this.id,
    required this.unitId,
    this.uploadStatus,
    this.locationUploadStatus,
    this.latitude,
    this.longitude,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['unit_id'] = Variable<int>(unitId);
    if (!nullToAbsent || uploadStatus != null) {
      map['upload_status'] = Variable<String>(uploadStatus);
    }
    if (!nullToAbsent || locationUploadStatus != null) {
      map['location_upload_status'] = Variable<String>(locationUploadStatus);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  DocsTableCompanion toCompanion(bool nullToAbsent) {
    return DocsTableCompanion(
      id: Value(id),
      unitId: Value(unitId),
      uploadStatus: uploadStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(uploadStatus),
      locationUploadStatus: locationUploadStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(locationUploadStatus),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      createdAt: Value(createdAt),
    );
  }

  factory DocEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocEntry(
      id: serializer.fromJson<int>(json['id']),
      unitId: serializer.fromJson<int>(json['unitId']),
      uploadStatus: serializer.fromJson<String?>(json['uploadStatus']),
      locationUploadStatus: serializer.fromJson<String?>(
        json['locationUploadStatus'],
      ),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'unitId': serializer.toJson<int>(unitId),
      'uploadStatus': serializer.toJson<String?>(uploadStatus),
      'locationUploadStatus': serializer.toJson<String?>(locationUploadStatus),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DocEntry copyWith({
    int? id,
    int? unitId,
    Value<String?> uploadStatus = const Value.absent(),
    Value<String?> locationUploadStatus = const Value.absent(),
    Value<double?> latitude = const Value.absent(),
    Value<double?> longitude = const Value.absent(),
    DateTime? createdAt,
  }) => DocEntry(
    id: id ?? this.id,
    unitId: unitId ?? this.unitId,
    uploadStatus: uploadStatus.present ? uploadStatus.value : this.uploadStatus,
    locationUploadStatus: locationUploadStatus.present
        ? locationUploadStatus.value
        : this.locationUploadStatus,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    createdAt: createdAt ?? this.createdAt,
  );
  DocEntry copyWithCompanion(DocsTableCompanion data) {
    return DocEntry(
      id: data.id.present ? data.id.value : this.id,
      unitId: data.unitId.present ? data.unitId.value : this.unitId,
      uploadStatus: data.uploadStatus.present
          ? data.uploadStatus.value
          : this.uploadStatus,
      locationUploadStatus: data.locationUploadStatus.present
          ? data.locationUploadStatus.value
          : this.locationUploadStatus,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocEntry(')
          ..write('id: $id, ')
          ..write('unitId: $unitId, ')
          ..write('uploadStatus: $uploadStatus, ')
          ..write('locationUploadStatus: $locationUploadStatus, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    unitId,
    uploadStatus,
    locationUploadStatus,
    latitude,
    longitude,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocEntry &&
          other.id == this.id &&
          other.unitId == this.unitId &&
          other.uploadStatus == this.uploadStatus &&
          other.locationUploadStatus == this.locationUploadStatus &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.createdAt == this.createdAt);
}

class DocsTableCompanion extends UpdateCompanion<DocEntry> {
  final Value<int> id;
  final Value<int> unitId;
  final Value<String?> uploadStatus;
  final Value<String?> locationUploadStatus;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<DateTime> createdAt;
  const DocsTableCompanion({
    this.id = const Value.absent(),
    this.unitId = const Value.absent(),
    this.uploadStatus = const Value.absent(),
    this.locationUploadStatus = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  DocsTableCompanion.insert({
    this.id = const Value.absent(),
    required int unitId,
    this.uploadStatus = const Value.absent(),
    this.locationUploadStatus = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : unitId = Value(unitId);
  static Insertable<DocEntry> custom({
    Expression<int>? id,
    Expression<int>? unitId,
    Expression<String>? uploadStatus,
    Expression<String>? locationUploadStatus,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (unitId != null) 'unit_id': unitId,
      if (uploadStatus != null) 'upload_status': uploadStatus,
      if (locationUploadStatus != null)
        'location_upload_status': locationUploadStatus,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  DocsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? unitId,
    Value<String?>? uploadStatus,
    Value<String?>? locationUploadStatus,
    Value<double?>? latitude,
    Value<double?>? longitude,
    Value<DateTime>? createdAt,
  }) {
    return DocsTableCompanion(
      id: id ?? this.id,
      unitId: unitId ?? this.unitId,
      uploadStatus: uploadStatus ?? this.uploadStatus,
      locationUploadStatus: locationUploadStatus ?? this.locationUploadStatus,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<int>(unitId.value);
    }
    if (uploadStatus.present) {
      map['upload_status'] = Variable<String>(uploadStatus.value);
    }
    if (locationUploadStatus.present) {
      map['location_upload_status'] = Variable<String>(
        locationUploadStatus.value,
      );
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocsTableCompanion(')
          ..write('id: $id, ')
          ..write('unitId: $unitId, ')
          ..write('uploadStatus: $uploadStatus, ')
          ..write('locationUploadStatus: $locationUploadStatus, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $DocMediaTableTable extends DocMediaTable
    with TableInfo<$DocMediaTableTable, DocMediaEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocMediaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<int> docId = GeneratedColumn<int>(
    'doc_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES docs_table (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _localFilePathMeta = const VerificationMeta(
    'localFilePath',
  );
  @override
  late final GeneratedColumn<String> localFilePath = GeneratedColumn<String>(
    'local_file_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _uploadStatusMeta = const VerificationMeta(
    'uploadStatus',
  );
  @override
  late final GeneratedColumn<String> uploadStatus = GeneratedColumn<String>(
    'upload_status',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    docId,
    localFilePath,
    uploadStatus,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'doc_media_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<DocMediaEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('doc_id')) {
      context.handle(
        _docIdMeta,
        docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta),
      );
    } else if (isInserting) {
      context.missing(_docIdMeta);
    }
    if (data.containsKey('local_file_path')) {
      context.handle(
        _localFilePathMeta,
        localFilePath.isAcceptableOrUnknown(
          data['local_file_path']!,
          _localFilePathMeta,
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
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DocMediaEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocMediaEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      docId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}doc_id'],
      )!,
      localFilePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}local_file_path'],
      ),
      uploadStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}upload_status'],
      ),
    );
  }

  @override
  $DocMediaTableTable createAlias(String alias) {
    return $DocMediaTableTable(attachedDatabase, alias);
  }
}

class DocMediaEntry extends DataClass implements Insertable<DocMediaEntry> {
  final int id;
  final int docId;
  final String? localFilePath;
  final String? uploadStatus;
  const DocMediaEntry({
    required this.id,
    required this.docId,
    this.localFilePath,
    this.uploadStatus,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['doc_id'] = Variable<int>(docId);
    if (!nullToAbsent || localFilePath != null) {
      map['local_file_path'] = Variable<String>(localFilePath);
    }
    if (!nullToAbsent || uploadStatus != null) {
      map['upload_status'] = Variable<String>(uploadStatus);
    }
    return map;
  }

  DocMediaTableCompanion toCompanion(bool nullToAbsent) {
    return DocMediaTableCompanion(
      id: Value(id),
      docId: Value(docId),
      localFilePath: localFilePath == null && nullToAbsent
          ? const Value.absent()
          : Value(localFilePath),
      uploadStatus: uploadStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(uploadStatus),
    );
  }

  factory DocMediaEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocMediaEntry(
      id: serializer.fromJson<int>(json['id']),
      docId: serializer.fromJson<int>(json['docId']),
      localFilePath: serializer.fromJson<String?>(json['localFilePath']),
      uploadStatus: serializer.fromJson<String?>(json['uploadStatus']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'docId': serializer.toJson<int>(docId),
      'localFilePath': serializer.toJson<String?>(localFilePath),
      'uploadStatus': serializer.toJson<String?>(uploadStatus),
    };
  }

  DocMediaEntry copyWith({
    int? id,
    int? docId,
    Value<String?> localFilePath = const Value.absent(),
    Value<String?> uploadStatus = const Value.absent(),
  }) => DocMediaEntry(
    id: id ?? this.id,
    docId: docId ?? this.docId,
    localFilePath: localFilePath.present
        ? localFilePath.value
        : this.localFilePath,
    uploadStatus: uploadStatus.present ? uploadStatus.value : this.uploadStatus,
  );
  DocMediaEntry copyWithCompanion(DocMediaTableCompanion data) {
    return DocMediaEntry(
      id: data.id.present ? data.id.value : this.id,
      docId: data.docId.present ? data.docId.value : this.docId,
      localFilePath: data.localFilePath.present
          ? data.localFilePath.value
          : this.localFilePath,
      uploadStatus: data.uploadStatus.present
          ? data.uploadStatus.value
          : this.uploadStatus,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocMediaEntry(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('localFilePath: $localFilePath, ')
          ..write('uploadStatus: $uploadStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, docId, localFilePath, uploadStatus);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocMediaEntry &&
          other.id == this.id &&
          other.docId == this.docId &&
          other.localFilePath == this.localFilePath &&
          other.uploadStatus == this.uploadStatus);
}

class DocMediaTableCompanion extends UpdateCompanion<DocMediaEntry> {
  final Value<int> id;
  final Value<int> docId;
  final Value<String?> localFilePath;
  final Value<String?> uploadStatus;
  const DocMediaTableCompanion({
    this.id = const Value.absent(),
    this.docId = const Value.absent(),
    this.localFilePath = const Value.absent(),
    this.uploadStatus = const Value.absent(),
  });
  DocMediaTableCompanion.insert({
    this.id = const Value.absent(),
    required int docId,
    this.localFilePath = const Value.absent(),
    this.uploadStatus = const Value.absent(),
  }) : docId = Value(docId);
  static Insertable<DocMediaEntry> custom({
    Expression<int>? id,
    Expression<int>? docId,
    Expression<String>? localFilePath,
    Expression<String>? uploadStatus,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docId != null) 'doc_id': docId,
      if (localFilePath != null) 'local_file_path': localFilePath,
      if (uploadStatus != null) 'upload_status': uploadStatus,
    });
  }

  DocMediaTableCompanion copyWith({
    Value<int>? id,
    Value<int>? docId,
    Value<String?>? localFilePath,
    Value<String?>? uploadStatus,
  }) {
    return DocMediaTableCompanion(
      id: id ?? this.id,
      docId: docId ?? this.docId,
      localFilePath: localFilePath ?? this.localFilePath,
      uploadStatus: uploadStatus ?? this.uploadStatus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docId.present) {
      map['doc_id'] = Variable<int>(docId.value);
    }
    if (localFilePath.present) {
      map['local_file_path'] = Variable<String>(localFilePath.value);
    }
    if (uploadStatus.present) {
      map['upload_status'] = Variable<String>(uploadStatus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocMediaTableCompanion(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('localFilePath: $localFilePath, ')
          ..write('uploadStatus: $uploadStatus')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ItemsTableTable itemsTable = $ItemsTableTable(this);
  late final $ItemUnitsTableTable itemUnitsTable = $ItemUnitsTableTable(this);
  late final $DocsTableTable docsTable = $DocsTableTable(this);
  late final $DocMediaTableTable docMediaTable = $DocMediaTableTable(this);
  late final ItemsDao itemsDao = ItemsDao(this as AppDatabase);
  late final UnitsDao unitsDao = UnitsDao(this as AppDatabase);
  late final DocsDao docsDao = DocsDao(this as AppDatabase);
  late final DocMediaDao docMediaDao = DocMediaDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    itemsTable,
    itemUnitsTable,
    docsTable,
    docMediaTable,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'items_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('item_units_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'item_units_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('docs_table', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'docs_table',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('doc_media_table', kind: UpdateKind.delete)],
    ),
  ]);
}

typedef $$ItemsTableTableCreateCompanionBuilder =
    ItemsTableCompanion Function({Value<int> id});
typedef $$ItemsTableTableUpdateCompanionBuilder =
    ItemsTableCompanion Function({Value<int> id});

final class $$ItemsTableTableReferences
    extends BaseReferences<_$AppDatabase, $ItemsTableTable, ItemEntry> {
  $$ItemsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ItemUnitsTableTable, List<ItemUnitEntry>>
  _itemUnitsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.itemUnitsTable,
    aliasName: 'items_table__id__item_units_table__item_id',
  );

  $$ItemUnitsTableTableProcessedTableManager get itemUnitsTableRefs {
    final manager = $$ItemUnitsTableTableTableManager(
      $_db,
      $_db.itemUnitsTable,
    ).filter((f) => f.itemId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_itemUnitsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ItemsTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableFilterComposer({
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

  Expression<bool> itemUnitsTableRefs(
    Expression<bool> Function($$ItemUnitsTableTableFilterComposer f) f,
  ) {
    final $$ItemUnitsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itemUnitsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemUnitsTableTableFilterComposer(
            $db: $db,
            $table: $db.itemUnitsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableOrderingComposer({
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
}

class $$ItemsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  Expression<T> itemUnitsTableRefs<T extends Object>(
    Expression<T> Function($$ItemUnitsTableTableAnnotationComposer a) f,
  ) {
    final $$ItemUnitsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.itemUnitsTable,
      getReferencedColumn: (t) => t.itemId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemUnitsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.itemUnitsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemsTableTable,
          ItemEntry,
          $$ItemsTableTableFilterComposer,
          $$ItemsTableTableOrderingComposer,
          $$ItemsTableTableAnnotationComposer,
          $$ItemsTableTableCreateCompanionBuilder,
          $$ItemsTableTableUpdateCompanionBuilder,
          (ItemEntry, $$ItemsTableTableReferences),
          ItemEntry,
          PrefetchHooks Function({bool itemUnitsTableRefs})
        > {
  $$ItemsTableTableTableManager(_$AppDatabase db, $ItemsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({Value<int> id = const Value.absent()}) =>
              ItemsTableCompanion(id: id),
          createCompanionCallback: ({Value<int> id = const Value.absent()}) =>
              ItemsTableCompanion.insert(id: id),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ItemsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itemUnitsTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (itemUnitsTableRefs) db.itemUnitsTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (itemUnitsTableRefs)
                    await $_getPrefetchedData<
                      ItemEntry,
                      $ItemsTableTable,
                      ItemUnitEntry
                    >(
                      currentTable: table,
                      referencedTable: $$ItemsTableTableReferences
                          ._itemUnitsTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ItemsTableTableReferences(
                            db,
                            table,
                            p0,
                          ).itemUnitsTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.itemId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ItemsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemsTableTable,
      ItemEntry,
      $$ItemsTableTableFilterComposer,
      $$ItemsTableTableOrderingComposer,
      $$ItemsTableTableAnnotationComposer,
      $$ItemsTableTableCreateCompanionBuilder,
      $$ItemsTableTableUpdateCompanionBuilder,
      (ItemEntry, $$ItemsTableTableReferences),
      ItemEntry,
      PrefetchHooks Function({bool itemUnitsTableRefs})
    >;
typedef $$ItemUnitsTableTableCreateCompanionBuilder =
    ItemUnitsTableCompanion Function({Value<int> id, required int itemId});
typedef $$ItemUnitsTableTableUpdateCompanionBuilder =
    ItemUnitsTableCompanion Function({Value<int> id, Value<int> itemId});

final class $$ItemUnitsTableTableReferences
    extends BaseReferences<_$AppDatabase, $ItemUnitsTableTable, ItemUnitEntry> {
  $$ItemUnitsTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ItemsTableTable _itemIdTable(_$AppDatabase db) =>
      db.itemsTable.createAlias('item_units_table__item_id__items_table__id');

  $$ItemsTableTableProcessedTableManager get itemId {
    final $_column = $_itemColumn<int>('item_id')!;

    final manager = $$ItemsTableTableTableManager(
      $_db,
      $_db.itemsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_itemIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$DocsTableTable, List<DocEntry>>
  _docsTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.docsTable,
    aliasName: 'item_units_table__id__docs_table__unit_id',
  );

  $$DocsTableTableProcessedTableManager get docsTableRefs {
    final manager = $$DocsTableTableTableManager(
      $_db,
      $_db.docsTable,
    ).filter((f) => f.unitId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_docsTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ItemUnitsTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemUnitsTableTable> {
  $$ItemUnitsTableTableFilterComposer({
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

  $$ItemsTableTableFilterComposer get itemId {
    final $$ItemsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableFilterComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> docsTableRefs(
    Expression<bool> Function($$DocsTableTableFilterComposer f) f,
  ) {
    final $$DocsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.docsTable,
      getReferencedColumn: (t) => t.unitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocsTableTableFilterComposer(
            $db: $db,
            $table: $db.docsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemUnitsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemUnitsTableTable> {
  $$ItemUnitsTableTableOrderingComposer({
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

  $$ItemsTableTableOrderingComposer get itemId {
    final $$ItemsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableOrderingComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ItemUnitsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemUnitsTableTable> {
  $$ItemUnitsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  $$ItemsTableTableAnnotationComposer get itemId {
    final $$ItemsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.itemId,
      referencedTable: $db.itemsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.itemsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> docsTableRefs<T extends Object>(
    Expression<T> Function($$DocsTableTableAnnotationComposer a) f,
  ) {
    final $$DocsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.docsTable,
      getReferencedColumn: (t) => t.unitId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.docsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ItemUnitsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemUnitsTableTable,
          ItemUnitEntry,
          $$ItemUnitsTableTableFilterComposer,
          $$ItemUnitsTableTableOrderingComposer,
          $$ItemUnitsTableTableAnnotationComposer,
          $$ItemUnitsTableTableCreateCompanionBuilder,
          $$ItemUnitsTableTableUpdateCompanionBuilder,
          (ItemUnitEntry, $$ItemUnitsTableTableReferences),
          ItemUnitEntry,
          PrefetchHooks Function({bool itemId, bool docsTableRefs})
        > {
  $$ItemUnitsTableTableTableManager(
    _$AppDatabase db,
    $ItemUnitsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemUnitsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemUnitsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemUnitsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> itemId = const Value.absent(),
              }) => ItemUnitsTableCompanion(id: id, itemId: itemId),
          createCompanionCallback:
              ({Value<int> id = const Value.absent(), required int itemId}) =>
                  ItemUnitsTableCompanion.insert(id: id, itemId: itemId),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ItemUnitsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({itemId = false, docsTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (docsTableRefs) db.docsTable],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (itemId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.itemId,
                                referencedTable: $$ItemUnitsTableTableReferences
                                    ._itemIdTable(db),
                                referencedColumn:
                                    $$ItemUnitsTableTableReferences
                                        ._itemIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (docsTableRefs)
                    await $_getPrefetchedData<
                      ItemUnitEntry,
                      $ItemUnitsTableTable,
                      DocEntry
                    >(
                      currentTable: table,
                      referencedTable: $$ItemUnitsTableTableReferences
                          ._docsTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ItemUnitsTableTableReferences(
                            db,
                            table,
                            p0,
                          ).docsTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.unitId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ItemUnitsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemUnitsTableTable,
      ItemUnitEntry,
      $$ItemUnitsTableTableFilterComposer,
      $$ItemUnitsTableTableOrderingComposer,
      $$ItemUnitsTableTableAnnotationComposer,
      $$ItemUnitsTableTableCreateCompanionBuilder,
      $$ItemUnitsTableTableUpdateCompanionBuilder,
      (ItemUnitEntry, $$ItemUnitsTableTableReferences),
      ItemUnitEntry,
      PrefetchHooks Function({bool itemId, bool docsTableRefs})
    >;
typedef $$DocsTableTableCreateCompanionBuilder =
    DocsTableCompanion Function({
      Value<int> id,
      required int unitId,
      Value<String?> uploadStatus,
      Value<String?> locationUploadStatus,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<DateTime> createdAt,
    });
typedef $$DocsTableTableUpdateCompanionBuilder =
    DocsTableCompanion Function({
      Value<int> id,
      Value<int> unitId,
      Value<String?> uploadStatus,
      Value<String?> locationUploadStatus,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<DateTime> createdAt,
    });

final class $$DocsTableTableReferences
    extends BaseReferences<_$AppDatabase, $DocsTableTable, DocEntry> {
  $$DocsTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ItemUnitsTableTable _unitIdTable(_$AppDatabase db) => db
      .itemUnitsTable
      .createAlias('docs_table__unit_id__item_units_table__id');

  $$ItemUnitsTableTableProcessedTableManager get unitId {
    final $_column = $_itemColumn<int>('unit_id')!;

    final manager = $$ItemUnitsTableTableTableManager(
      $_db,
      $_db.itemUnitsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_unitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$DocMediaTableTable, List<DocMediaEntry>>
  _docMediaTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.docMediaTable,
    aliasName: 'docs_table__id__doc_media_table__doc_id',
  );

  $$DocMediaTableTableProcessedTableManager get docMediaTableRefs {
    final manager = $$DocMediaTableTableTableManager(
      $_db,
      $_db.docMediaTable,
    ).filter((f) => f.docId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_docMediaTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$DocsTableTableFilterComposer
    extends Composer<_$AppDatabase, $DocsTableTable> {
  $$DocsTableTableFilterComposer({
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

  ColumnFilters<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationUploadStatus => $composableBuilder(
    column: $table.locationUploadStatus,
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

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ItemUnitsTableTableFilterComposer get unitId {
    final $$ItemUnitsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.itemUnitsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemUnitsTableTableFilterComposer(
            $db: $db,
            $table: $db.itemUnitsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> docMediaTableRefs(
    Expression<bool> Function($$DocMediaTableTableFilterComposer f) f,
  ) {
    final $$DocMediaTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.docMediaTable,
      getReferencedColumn: (t) => t.docId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocMediaTableTableFilterComposer(
            $db: $db,
            $table: $db.docMediaTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DocsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DocsTableTable> {
  $$DocsTableTableOrderingComposer({
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

  ColumnOrderings<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationUploadStatus => $composableBuilder(
    column: $table.locationUploadStatus,
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

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ItemUnitsTableTableOrderingComposer get unitId {
    final $$ItemUnitsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.itemUnitsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemUnitsTableTableOrderingComposer(
            $db: $db,
            $table: $db.itemUnitsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DocsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DocsTableTable> {
  $$DocsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locationUploadStatus => $composableBuilder(
    column: $table.locationUploadStatus,
    builder: (column) => column,
  );

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ItemUnitsTableTableAnnotationComposer get unitId {
    final $$ItemUnitsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.unitId,
      referencedTable: $db.itemUnitsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ItemUnitsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.itemUnitsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> docMediaTableRefs<T extends Object>(
    Expression<T> Function($$DocMediaTableTableAnnotationComposer a) f,
  ) {
    final $$DocMediaTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.docMediaTable,
      getReferencedColumn: (t) => t.docId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocMediaTableTableAnnotationComposer(
            $db: $db,
            $table: $db.docMediaTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$DocsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DocsTableTable,
          DocEntry,
          $$DocsTableTableFilterComposer,
          $$DocsTableTableOrderingComposer,
          $$DocsTableTableAnnotationComposer,
          $$DocsTableTableCreateCompanionBuilder,
          $$DocsTableTableUpdateCompanionBuilder,
          (DocEntry, $$DocsTableTableReferences),
          DocEntry,
          PrefetchHooks Function({bool unitId, bool docMediaTableRefs})
        > {
  $$DocsTableTableTableManager(_$AppDatabase db, $DocsTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DocsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DocsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DocsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> unitId = const Value.absent(),
                Value<String?> uploadStatus = const Value.absent(),
                Value<String?> locationUploadStatus = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => DocsTableCompanion(
                id: id,
                unitId: unitId,
                uploadStatus: uploadStatus,
                locationUploadStatus: locationUploadStatus,
                latitude: latitude,
                longitude: longitude,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int unitId,
                Value<String?> uploadStatus = const Value.absent(),
                Value<String?> locationUploadStatus = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => DocsTableCompanion.insert(
                id: id,
                unitId: unitId,
                uploadStatus: uploadStatus,
                locationUploadStatus: locationUploadStatus,
                latitude: latitude,
                longitude: longitude,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DocsTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({unitId = false, docMediaTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (docMediaTableRefs) db.docMediaTable,
              ],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (unitId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.unitId,
                                referencedTable: $$DocsTableTableReferences
                                    ._unitIdTable(db),
                                referencedColumn: $$DocsTableTableReferences
                                    ._unitIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (docMediaTableRefs)
                    await $_getPrefetchedData<
                      DocEntry,
                      $DocsTableTable,
                      DocMediaEntry
                    >(
                      currentTable: table,
                      referencedTable: $$DocsTableTableReferences
                          ._docMediaTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$DocsTableTableReferences(
                            db,
                            table,
                            p0,
                          ).docMediaTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.docId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$DocsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DocsTableTable,
      DocEntry,
      $$DocsTableTableFilterComposer,
      $$DocsTableTableOrderingComposer,
      $$DocsTableTableAnnotationComposer,
      $$DocsTableTableCreateCompanionBuilder,
      $$DocsTableTableUpdateCompanionBuilder,
      (DocEntry, $$DocsTableTableReferences),
      DocEntry,
      PrefetchHooks Function({bool unitId, bool docMediaTableRefs})
    >;
typedef $$DocMediaTableTableCreateCompanionBuilder =
    DocMediaTableCompanion Function({
      Value<int> id,
      required int docId,
      Value<String?> localFilePath,
      Value<String?> uploadStatus,
    });
typedef $$DocMediaTableTableUpdateCompanionBuilder =
    DocMediaTableCompanion Function({
      Value<int> id,
      Value<int> docId,
      Value<String?> localFilePath,
      Value<String?> uploadStatus,
    });

final class $$DocMediaTableTableReferences
    extends BaseReferences<_$AppDatabase, $DocMediaTableTable, DocMediaEntry> {
  $$DocMediaTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $DocsTableTable _docIdTable(_$AppDatabase db) =>
      db.docsTable.createAlias('doc_media_table__doc_id__docs_table__id');

  $$DocsTableTableProcessedTableManager get docId {
    final $_column = $_itemColumn<int>('doc_id')!;

    final manager = $$DocsTableTableTableManager(
      $_db,
      $_db.docsTable,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_docIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$DocMediaTableTableFilterComposer
    extends Composer<_$AppDatabase, $DocMediaTableTable> {
  $$DocMediaTableTableFilterComposer({
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

  ColumnFilters<String> get localFilePath => $composableBuilder(
    column: $table.localFilePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => ColumnFilters(column),
  );

  $$DocsTableTableFilterComposer get docId {
    final $$DocsTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.docId,
      referencedTable: $db.docsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocsTableTableFilterComposer(
            $db: $db,
            $table: $db.docsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DocMediaTableTableOrderingComposer
    extends Composer<_$AppDatabase, $DocMediaTableTable> {
  $$DocMediaTableTableOrderingComposer({
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

  ColumnOrderings<String> get localFilePath => $composableBuilder(
    column: $table.localFilePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => ColumnOrderings(column),
  );

  $$DocsTableTableOrderingComposer get docId {
    final $$DocsTableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.docId,
      referencedTable: $db.docsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocsTableTableOrderingComposer(
            $db: $db,
            $table: $db.docsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DocMediaTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $DocMediaTableTable> {
  $$DocMediaTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get localFilePath => $composableBuilder(
    column: $table.localFilePath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => column,
  );

  $$DocsTableTableAnnotationComposer get docId {
    final $$DocsTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.docId,
      referencedTable: $db.docsTable,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$DocsTableTableAnnotationComposer(
            $db: $db,
            $table: $db.docsTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$DocMediaTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DocMediaTableTable,
          DocMediaEntry,
          $$DocMediaTableTableFilterComposer,
          $$DocMediaTableTableOrderingComposer,
          $$DocMediaTableTableAnnotationComposer,
          $$DocMediaTableTableCreateCompanionBuilder,
          $$DocMediaTableTableUpdateCompanionBuilder,
          (DocMediaEntry, $$DocMediaTableTableReferences),
          DocMediaEntry,
          PrefetchHooks Function({bool docId})
        > {
  $$DocMediaTableTableTableManager(_$AppDatabase db, $DocMediaTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DocMediaTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DocMediaTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DocMediaTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> docId = const Value.absent(),
                Value<String?> localFilePath = const Value.absent(),
                Value<String?> uploadStatus = const Value.absent(),
              }) => DocMediaTableCompanion(
                id: id,
                docId: docId,
                localFilePath: localFilePath,
                uploadStatus: uploadStatus,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int docId,
                Value<String?> localFilePath = const Value.absent(),
                Value<String?> uploadStatus = const Value.absent(),
              }) => DocMediaTableCompanion.insert(
                id: id,
                docId: docId,
                localFilePath: localFilePath,
                uploadStatus: uploadStatus,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$DocMediaTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({docId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (docId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.docId,
                                referencedTable: $$DocMediaTableTableReferences
                                    ._docIdTable(db),
                                referencedColumn: $$DocMediaTableTableReferences
                                    ._docIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$DocMediaTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DocMediaTableTable,
      DocMediaEntry,
      $$DocMediaTableTableFilterComposer,
      $$DocMediaTableTableOrderingComposer,
      $$DocMediaTableTableAnnotationComposer,
      $$DocMediaTableTableCreateCompanionBuilder,
      $$DocMediaTableTableUpdateCompanionBuilder,
      (DocMediaEntry, $$DocMediaTableTableReferences),
      DocMediaEntry,
      PrefetchHooks Function({bool docId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ItemsTableTableTableManager get itemsTable =>
      $$ItemsTableTableTableManager(_db, _db.itemsTable);
  $$ItemUnitsTableTableTableManager get itemUnitsTable =>
      $$ItemUnitsTableTableTableManager(_db, _db.itemUnitsTable);
  $$DocsTableTableTableManager get docsTable =>
      $$DocsTableTableTableManager(_db, _db.docsTable);
  $$DocMediaTableTableTableManager get docMediaTable =>
      $$DocMediaTableTableTableManager(_db, _db.docMediaTable);
}

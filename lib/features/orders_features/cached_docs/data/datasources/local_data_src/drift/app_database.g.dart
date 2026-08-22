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
  static const VerificationMeta _printedNameMeta = const VerificationMeta(
    'printedName',
  );
  @override
  late final GeneratedColumn<String> printedName = GeneratedColumn<String>(
    'printed_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, printedName];
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
    if (data.containsKey('printed_name')) {
      context.handle(
        _printedNameMeta,
        printedName.isAcceptableOrUnknown(
          data['printed_name']!,
          _printedNameMeta,
        ),
      );
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
      printedName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}printed_name'],
      ),
    );
  }

  @override
  $ItemsTableTable createAlias(String alias) {
    return $ItemsTableTable(attachedDatabase, alias);
  }
}

class ItemEntry extends DataClass implements Insertable<ItemEntry> {
  final int id;
  final String? printedName;
  const ItemEntry({required this.id, this.printedName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || printedName != null) {
      map['printed_name'] = Variable<String>(printedName);
    }
    return map;
  }

  ItemsTableCompanion toCompanion(bool nullToAbsent) {
    return ItemsTableCompanion(
      id: Value(id),
      printedName: printedName == null && nullToAbsent
          ? const Value.absent()
          : Value(printedName),
    );
  }

  factory ItemEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemEntry(
      id: serializer.fromJson<int>(json['id']),
      printedName: serializer.fromJson<String?>(json['printedName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'printedName': serializer.toJson<String?>(printedName),
    };
  }

  ItemEntry copyWith({
    int? id,
    Value<String?> printedName = const Value.absent(),
  }) => ItemEntry(
    id: id ?? this.id,
    printedName: printedName.present ? printedName.value : this.printedName,
  );
  ItemEntry copyWithCompanion(ItemsTableCompanion data) {
    return ItemEntry(
      id: data.id.present ? data.id.value : this.id,
      printedName: data.printedName.present
          ? data.printedName.value
          : this.printedName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemEntry(')
          ..write('id: $id, ')
          ..write('printedName: $printedName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, printedName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemEntry &&
          other.id == this.id &&
          other.printedName == this.printedName);
}

class ItemsTableCompanion extends UpdateCompanion<ItemEntry> {
  final Value<int> id;
  final Value<String?> printedName;
  const ItemsTableCompanion({
    this.id = const Value.absent(),
    this.printedName = const Value.absent(),
  });
  ItemsTableCompanion.insert({
    this.id = const Value.absent(),
    this.printedName = const Value.absent(),
  });
  static Insertable<ItemEntry> custom({
    Expression<int>? id,
    Expression<String>? printedName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (printedName != null) 'printed_name': printedName,
    });
  }

  ItemsTableCompanion copyWith({Value<int>? id, Value<String?>? printedName}) {
    return ItemsTableCompanion(
      id: id ?? this.id,
      printedName: printedName ?? this.printedName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (printedName.present) {
      map['printed_name'] = Variable<String>(printedName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemsTableCompanion(')
          ..write('id: $id, ')
          ..write('printedName: $printedName')
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
  static const VerificationMeta _unitNumberMeta = const VerificationMeta(
    'unitNumber',
  );
  @override
  late final GeneratedColumn<int> unitNumber = GeneratedColumn<int>(
    'unit_number',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _executionNumberMeta = const VerificationMeta(
    'executionNumber',
  );
  @override
  late final GeneratedColumn<String> executionNumber = GeneratedColumn<String>(
    'execution_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    itemId,
    unitNumber,
    executionNumber,
  ];
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
    if (data.containsKey('unit_number')) {
      context.handle(
        _unitNumberMeta,
        unitNumber.isAcceptableOrUnknown(data['unit_number']!, _unitNumberMeta),
      );
    }
    if (data.containsKey('execution_number')) {
      context.handle(
        _executionNumberMeta,
        executionNumber.isAcceptableOrUnknown(
          data['execution_number']!,
          _executionNumberMeta,
        ),
      );
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
      unitNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}unit_number'],
      ),
      executionNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}execution_number'],
      ),
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
  final int? unitNumber;
  final String? executionNumber;
  const ItemUnitEntry({
    required this.id,
    required this.itemId,
    this.unitNumber,
    this.executionNumber,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_id'] = Variable<int>(itemId);
    if (!nullToAbsent || unitNumber != null) {
      map['unit_number'] = Variable<int>(unitNumber);
    }
    if (!nullToAbsent || executionNumber != null) {
      map['execution_number'] = Variable<String>(executionNumber);
    }
    return map;
  }

  ItemUnitsTableCompanion toCompanion(bool nullToAbsent) {
    return ItemUnitsTableCompanion(
      id: Value(id),
      itemId: Value(itemId),
      unitNumber: unitNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(unitNumber),
      executionNumber: executionNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(executionNumber),
    );
  }

  factory ItemUnitEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemUnitEntry(
      id: serializer.fromJson<int>(json['id']),
      itemId: serializer.fromJson<int>(json['itemId']),
      unitNumber: serializer.fromJson<int?>(json['unitNumber']),
      executionNumber: serializer.fromJson<String?>(json['executionNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemId': serializer.toJson<int>(itemId),
      'unitNumber': serializer.toJson<int?>(unitNumber),
      'executionNumber': serializer.toJson<String?>(executionNumber),
    };
  }

  ItemUnitEntry copyWith({
    int? id,
    int? itemId,
    Value<int?> unitNumber = const Value.absent(),
    Value<String?> executionNumber = const Value.absent(),
  }) => ItemUnitEntry(
    id: id ?? this.id,
    itemId: itemId ?? this.itemId,
    unitNumber: unitNumber.present ? unitNumber.value : this.unitNumber,
    executionNumber: executionNumber.present
        ? executionNumber.value
        : this.executionNumber,
  );
  ItemUnitEntry copyWithCompanion(ItemUnitsTableCompanion data) {
    return ItemUnitEntry(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      unitNumber: data.unitNumber.present
          ? data.unitNumber.value
          : this.unitNumber,
      executionNumber: data.executionNumber.present
          ? data.executionNumber.value
          : this.executionNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemUnitEntry(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('unitNumber: $unitNumber, ')
          ..write('executionNumber: $executionNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, itemId, unitNumber, executionNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemUnitEntry &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.unitNumber == this.unitNumber &&
          other.executionNumber == this.executionNumber);
}

class ItemUnitsTableCompanion extends UpdateCompanion<ItemUnitEntry> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<int?> unitNumber;
  final Value<String?> executionNumber;
  const ItemUnitsTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.unitNumber = const Value.absent(),
    this.executionNumber = const Value.absent(),
  });
  ItemUnitsTableCompanion.insert({
    this.id = const Value.absent(),
    required int itemId,
    this.unitNumber = const Value.absent(),
    this.executionNumber = const Value.absent(),
  }) : itemId = Value(itemId);
  static Insertable<ItemUnitEntry> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<int>? unitNumber,
    Expression<String>? executionNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (unitNumber != null) 'unit_number': unitNumber,
      if (executionNumber != null) 'execution_number': executionNumber,
    });
  }

  ItemUnitsTableCompanion copyWith({
    Value<int>? id,
    Value<int>? itemId,
    Value<int?>? unitNumber,
    Value<String?>? executionNumber,
  }) {
    return ItemUnitsTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      unitNumber: unitNumber ?? this.unitNumber,
      executionNumber: executionNumber ?? this.executionNumber,
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
    if (unitNumber.present) {
      map['unit_number'] = Variable<int>(unitNumber.value);
    }
    if (executionNumber.present) {
      map['execution_number'] = Variable<String>(executionNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemUnitsTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('unitNumber: $unitNumber, ')
          ..write('executionNumber: $executionNumber')
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
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _serverMediaIdMeta = const VerificationMeta(
    'serverMediaId',
  );
  @override
  late final GeneratedColumn<int> serverMediaId = GeneratedColumn<int>(
    'server_media_id',
    aliasedName,
    true,
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
  @override
  late final GeneratedColumnWithTypeConverter<LocationDocModel?, String>
  location = GeneratedColumn<String>(
    'location',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  ).withConverter<LocationDocModel?>($DocsTableTable.$converterlocation);
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
    serverMediaId,
    unitId,
    location,
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
    if (data.containsKey('server_media_id')) {
      context.handle(
        _serverMediaIdMeta,
        serverMediaId.isAcceptableOrUnknown(
          data['server_media_id']!,
          _serverMediaIdMeta,
        ),
      );
    }
    if (data.containsKey('unit_id')) {
      context.handle(
        _unitIdMeta,
        unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta),
      );
    } else if (isInserting) {
      context.missing(_unitIdMeta);
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
      serverMediaId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}server_media_id'],
      ),
      unitId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}unit_id'],
      )!,
      location: $DocsTableTable.$converterlocation.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}location'],
        ),
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

  static TypeConverter<LocationDocModel?, String?> $converterlocation =
      const LocationDocConverter();
}

class DocEntry extends DataClass implements Insertable<DocEntry> {
  final int id;
  final int? serverMediaId;
  final int unitId;
  final LocationDocModel? location;
  final DateTime createdAt;
  const DocEntry({
    required this.id,
    this.serverMediaId,
    required this.unitId,
    this.location,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || serverMediaId != null) {
      map['server_media_id'] = Variable<int>(serverMediaId);
    }
    map['unit_id'] = Variable<int>(unitId);
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(
        $DocsTableTable.$converterlocation.toSql(location),
      );
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  DocsTableCompanion toCompanion(bool nullToAbsent) {
    return DocsTableCompanion(
      id: Value(id),
      serverMediaId: serverMediaId == null && nullToAbsent
          ? const Value.absent()
          : Value(serverMediaId),
      unitId: Value(unitId),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
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
      serverMediaId: serializer.fromJson<int?>(json['serverMediaId']),
      unitId: serializer.fromJson<int>(json['unitId']),
      location: serializer.fromJson<LocationDocModel?>(json['location']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'serverMediaId': serializer.toJson<int?>(serverMediaId),
      'unitId': serializer.toJson<int>(unitId),
      'location': serializer.toJson<LocationDocModel?>(location),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  DocEntry copyWith({
    int? id,
    Value<int?> serverMediaId = const Value.absent(),
    int? unitId,
    Value<LocationDocModel?> location = const Value.absent(),
    DateTime? createdAt,
  }) => DocEntry(
    id: id ?? this.id,
    serverMediaId: serverMediaId.present
        ? serverMediaId.value
        : this.serverMediaId,
    unitId: unitId ?? this.unitId,
    location: location.present ? location.value : this.location,
    createdAt: createdAt ?? this.createdAt,
  );
  DocEntry copyWithCompanion(DocsTableCompanion data) {
    return DocEntry(
      id: data.id.present ? data.id.value : this.id,
      serverMediaId: data.serverMediaId.present
          ? data.serverMediaId.value
          : this.serverMediaId,
      unitId: data.unitId.present ? data.unitId.value : this.unitId,
      location: data.location.present ? data.location.value : this.location,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocEntry(')
          ..write('id: $id, ')
          ..write('serverMediaId: $serverMediaId, ')
          ..write('unitId: $unitId, ')
          ..write('location: $location, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, serverMediaId, unitId, location, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocEntry &&
          other.id == this.id &&
          other.serverMediaId == this.serverMediaId &&
          other.unitId == this.unitId &&
          other.location == this.location &&
          other.createdAt == this.createdAt);
}

class DocsTableCompanion extends UpdateCompanion<DocEntry> {
  final Value<int> id;
  final Value<int?> serverMediaId;
  final Value<int> unitId;
  final Value<LocationDocModel?> location;
  final Value<DateTime> createdAt;
  const DocsTableCompanion({
    this.id = const Value.absent(),
    this.serverMediaId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.location = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  DocsTableCompanion.insert({
    this.id = const Value.absent(),
    this.serverMediaId = const Value.absent(),
    required int unitId,
    this.location = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : unitId = Value(unitId);
  static Insertable<DocEntry> custom({
    Expression<int>? id,
    Expression<int>? serverMediaId,
    Expression<int>? unitId,
    Expression<String>? location,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (serverMediaId != null) 'server_media_id': serverMediaId,
      if (unitId != null) 'unit_id': unitId,
      if (location != null) 'location': location,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  DocsTableCompanion copyWith({
    Value<int>? id,
    Value<int?>? serverMediaId,
    Value<int>? unitId,
    Value<LocationDocModel?>? location,
    Value<DateTime>? createdAt,
  }) {
    return DocsTableCompanion(
      id: id ?? this.id,
      serverMediaId: serverMediaId ?? this.serverMediaId,
      unitId: unitId ?? this.unitId,
      location: location ?? this.location,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (serverMediaId.present) {
      map['server_media_id'] = Variable<int>(serverMediaId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<int>(unitId.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(
        $DocsTableTable.$converterlocation.toSql(location.value),
      );
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
          ..write('serverMediaId: $serverMediaId, ')
          ..write('unitId: $unitId, ')
          ..write('location: $location, ')
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
  );
  static const VerificationMeta _filePathMeta = const VerificationMeta(
    'filePath',
  );
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
    'file_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fileTypeMeta = const VerificationMeta(
    'fileType',
  );
  @override
  late final GeneratedColumn<String> fileType = GeneratedColumn<String>(
    'file_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('image'),
  );
  static const VerificationMeta _thumbnailMeta = const VerificationMeta(
    'thumbnail',
  );
  @override
  late final GeneratedColumn<String> thumbnail = GeneratedColumn<String>(
    'thumbnail',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sequenceMeta = const VerificationMeta(
    'sequence',
  );
  @override
  late final GeneratedColumn<int> sequence = GeneratedColumn<int>(
    'sequence',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _isServerFileMeta = const VerificationMeta(
    'isServerFile',
  );
  @override
  late final GeneratedColumn<bool> isServerFile = GeneratedColumn<bool>(
    'is_server_file',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_server_file" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    docId,
    filePath,
    fileType,
    thumbnail,
    sequence,
    isServerFile,
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
    if (data.containsKey('file_path')) {
      context.handle(
        _filePathMeta,
        filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta),
      );
    }
    if (data.containsKey('file_type')) {
      context.handle(
        _fileTypeMeta,
        fileType.isAcceptableOrUnknown(data['file_type']!, _fileTypeMeta),
      );
    }
    if (data.containsKey('thumbnail')) {
      context.handle(
        _thumbnailMeta,
        thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta),
      );
    }
    if (data.containsKey('sequence')) {
      context.handle(
        _sequenceMeta,
        sequence.isAcceptableOrUnknown(data['sequence']!, _sequenceMeta),
      );
    }
    if (data.containsKey('is_server_file')) {
      context.handle(
        _isServerFileMeta,
        isServerFile.isAcceptableOrUnknown(
          data['is_server_file']!,
          _isServerFileMeta,
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
      filePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_path'],
      ),
      fileType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_type'],
      )!,
      thumbnail: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnail'],
      ),
      sequence: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sequence'],
      )!,
      isServerFile: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_server_file'],
      )!,
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
  final String? filePath;
  final String fileType;
  final String? thumbnail;
  final int sequence;
  final bool isServerFile;
  const DocMediaEntry({
    required this.id,
    required this.docId,
    this.filePath,
    required this.fileType,
    this.thumbnail,
    required this.sequence,
    required this.isServerFile,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['doc_id'] = Variable<int>(docId);
    if (!nullToAbsent || filePath != null) {
      map['file_path'] = Variable<String>(filePath);
    }
    map['file_type'] = Variable<String>(fileType);
    if (!nullToAbsent || thumbnail != null) {
      map['thumbnail'] = Variable<String>(thumbnail);
    }
    map['sequence'] = Variable<int>(sequence);
    map['is_server_file'] = Variable<bool>(isServerFile);
    return map;
  }

  DocMediaTableCompanion toCompanion(bool nullToAbsent) {
    return DocMediaTableCompanion(
      id: Value(id),
      docId: Value(docId),
      filePath: filePath == null && nullToAbsent
          ? const Value.absent()
          : Value(filePath),
      fileType: Value(fileType),
      thumbnail: thumbnail == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnail),
      sequence: Value(sequence),
      isServerFile: Value(isServerFile),
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
      filePath: serializer.fromJson<String?>(json['filePath']),
      fileType: serializer.fromJson<String>(json['fileType']),
      thumbnail: serializer.fromJson<String?>(json['thumbnail']),
      sequence: serializer.fromJson<int>(json['sequence']),
      isServerFile: serializer.fromJson<bool>(json['isServerFile']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'docId': serializer.toJson<int>(docId),
      'filePath': serializer.toJson<String?>(filePath),
      'fileType': serializer.toJson<String>(fileType),
      'thumbnail': serializer.toJson<String?>(thumbnail),
      'sequence': serializer.toJson<int>(sequence),
      'isServerFile': serializer.toJson<bool>(isServerFile),
    };
  }

  DocMediaEntry copyWith({
    int? id,
    int? docId,
    Value<String?> filePath = const Value.absent(),
    String? fileType,
    Value<String?> thumbnail = const Value.absent(),
    int? sequence,
    bool? isServerFile,
  }) => DocMediaEntry(
    id: id ?? this.id,
    docId: docId ?? this.docId,
    filePath: filePath.present ? filePath.value : this.filePath,
    fileType: fileType ?? this.fileType,
    thumbnail: thumbnail.present ? thumbnail.value : this.thumbnail,
    sequence: sequence ?? this.sequence,
    isServerFile: isServerFile ?? this.isServerFile,
  );
  DocMediaEntry copyWithCompanion(DocMediaTableCompanion data) {
    return DocMediaEntry(
      id: data.id.present ? data.id.value : this.id,
      docId: data.docId.present ? data.docId.value : this.docId,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      fileType: data.fileType.present ? data.fileType.value : this.fileType,
      thumbnail: data.thumbnail.present ? data.thumbnail.value : this.thumbnail,
      sequence: data.sequence.present ? data.sequence.value : this.sequence,
      isServerFile: data.isServerFile.present
          ? data.isServerFile.value
          : this.isServerFile,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DocMediaEntry(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('sequence: $sequence, ')
          ..write('isServerFile: $isServerFile')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    docId,
    filePath,
    fileType,
    thumbnail,
    sequence,
    isServerFile,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocMediaEntry &&
          other.id == this.id &&
          other.docId == this.docId &&
          other.filePath == this.filePath &&
          other.fileType == this.fileType &&
          other.thumbnail == this.thumbnail &&
          other.sequence == this.sequence &&
          other.isServerFile == this.isServerFile);
}

class DocMediaTableCompanion extends UpdateCompanion<DocMediaEntry> {
  final Value<int> id;
  final Value<int> docId;
  final Value<String?> filePath;
  final Value<String> fileType;
  final Value<String?> thumbnail;
  final Value<int> sequence;
  final Value<bool> isServerFile;
  const DocMediaTableCompanion({
    this.id = const Value.absent(),
    this.docId = const Value.absent(),
    this.filePath = const Value.absent(),
    this.fileType = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.sequence = const Value.absent(),
    this.isServerFile = const Value.absent(),
  });
  DocMediaTableCompanion.insert({
    this.id = const Value.absent(),
    required int docId,
    this.filePath = const Value.absent(),
    this.fileType = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.sequence = const Value.absent(),
    this.isServerFile = const Value.absent(),
  }) : docId = Value(docId);
  static Insertable<DocMediaEntry> custom({
    Expression<int>? id,
    Expression<int>? docId,
    Expression<String>? filePath,
    Expression<String>? fileType,
    Expression<String>? thumbnail,
    Expression<int>? sequence,
    Expression<bool>? isServerFile,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docId != null) 'doc_id': docId,
      if (filePath != null) 'file_path': filePath,
      if (fileType != null) 'file_type': fileType,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (sequence != null) 'sequence': sequence,
      if (isServerFile != null) 'is_server_file': isServerFile,
    });
  }

  DocMediaTableCompanion copyWith({
    Value<int>? id,
    Value<int>? docId,
    Value<String?>? filePath,
    Value<String>? fileType,
    Value<String?>? thumbnail,
    Value<int>? sequence,
    Value<bool>? isServerFile,
  }) {
    return DocMediaTableCompanion(
      id: id ?? this.id,
      docId: docId ?? this.docId,
      filePath: filePath ?? this.filePath,
      fileType: fileType ?? this.fileType,
      thumbnail: thumbnail ?? this.thumbnail,
      sequence: sequence ?? this.sequence,
      isServerFile: isServerFile ?? this.isServerFile,
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
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (fileType.present) {
      map['file_type'] = Variable<String>(fileType.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (sequence.present) {
      map['sequence'] = Variable<int>(sequence.value);
    }
    if (isServerFile.present) {
      map['is_server_file'] = Variable<bool>(isServerFile.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocMediaTableCompanion(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('sequence: $sequence, ')
          ..write('isServerFile: $isServerFile')
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
  ]);
}

typedef $$ItemsTableTableCreateCompanionBuilder =
    ItemsTableCompanion Function({Value<int> id, Value<String?> printedName});
typedef $$ItemsTableTableUpdateCompanionBuilder =
    ItemsTableCompanion Function({Value<int> id, Value<String?> printedName});

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

  ColumnFilters<String> get printedName => $composableBuilder(
    column: $table.printedName,
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

  ColumnOrderings<String> get printedName => $composableBuilder(
    column: $table.printedName,
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

  GeneratedColumn<String> get printedName => $composableBuilder(
    column: $table.printedName,
    builder: (column) => column,
  );

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
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> printedName = const Value.absent(),
              }) => ItemsTableCompanion(id: id, printedName: printedName),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String?> printedName = const Value.absent(),
              }) =>
                  ItemsTableCompanion.insert(id: id, printedName: printedName),
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
    ItemUnitsTableCompanion Function({
      Value<int> id,
      required int itemId,
      Value<int?> unitNumber,
      Value<String?> executionNumber,
    });
typedef $$ItemUnitsTableTableUpdateCompanionBuilder =
    ItemUnitsTableCompanion Function({
      Value<int> id,
      Value<int> itemId,
      Value<int?> unitNumber,
      Value<String?> executionNumber,
    });

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

  ColumnFilters<int> get unitNumber => $composableBuilder(
    column: $table.unitNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get executionNumber => $composableBuilder(
    column: $table.executionNumber,
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

  ColumnOrderings<int> get unitNumber => $composableBuilder(
    column: $table.unitNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get executionNumber => $composableBuilder(
    column: $table.executionNumber,
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

  GeneratedColumn<int> get unitNumber => $composableBuilder(
    column: $table.unitNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get executionNumber => $composableBuilder(
    column: $table.executionNumber,
    builder: (column) => column,
  );

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
                Value<int?> unitNumber = const Value.absent(),
                Value<String?> executionNumber = const Value.absent(),
              }) => ItemUnitsTableCompanion(
                id: id,
                itemId: itemId,
                unitNumber: unitNumber,
                executionNumber: executionNumber,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int itemId,
                Value<int?> unitNumber = const Value.absent(),
                Value<String?> executionNumber = const Value.absent(),
              }) => ItemUnitsTableCompanion.insert(
                id: id,
                itemId: itemId,
                unitNumber: unitNumber,
                executionNumber: executionNumber,
              ),
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
      Value<int?> serverMediaId,
      required int unitId,
      Value<LocationDocModel?> location,
      Value<DateTime> createdAt,
    });
typedef $$DocsTableTableUpdateCompanionBuilder =
    DocsTableCompanion Function({
      Value<int> id,
      Value<int?> serverMediaId,
      Value<int> unitId,
      Value<LocationDocModel?> location,
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

  ColumnFilters<int> get serverMediaId => $composableBuilder(
    column: $table.serverMediaId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<LocationDocModel?, LocationDocModel, String>
  get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnWithTypeConverterFilters(column),
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

  ColumnOrderings<int> get serverMediaId => $composableBuilder(
    column: $table.serverMediaId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get location => $composableBuilder(
    column: $table.location,
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

  GeneratedColumn<int> get serverMediaId => $composableBuilder(
    column: $table.serverMediaId,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<LocationDocModel?, String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

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
          PrefetchHooks Function({bool unitId})
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
                Value<int?> serverMediaId = const Value.absent(),
                Value<int> unitId = const Value.absent(),
                Value<LocationDocModel?> location = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => DocsTableCompanion(
                id: id,
                serverMediaId: serverMediaId,
                unitId: unitId,
                location: location,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int?> serverMediaId = const Value.absent(),
                required int unitId,
                Value<LocationDocModel?> location = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => DocsTableCompanion.insert(
                id: id,
                serverMediaId: serverMediaId,
                unitId: unitId,
                location: location,
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
          prefetchHooksCallback: ({unitId = false}) {
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
                return [];
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
      PrefetchHooks Function({bool unitId})
    >;
typedef $$DocMediaTableTableCreateCompanionBuilder =
    DocMediaTableCompanion Function({
      Value<int> id,
      required int docId,
      Value<String?> filePath,
      Value<String> fileType,
      Value<String?> thumbnail,
      Value<int> sequence,
      Value<bool> isServerFile,
    });
typedef $$DocMediaTableTableUpdateCompanionBuilder =
    DocMediaTableCompanion Function({
      Value<int> id,
      Value<int> docId,
      Value<String?> filePath,
      Value<String> fileType,
      Value<String?> thumbnail,
      Value<int> sequence,
      Value<bool> isServerFile,
    });

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

  ColumnFilters<int> get docId => $composableBuilder(
    column: $table.docId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileType => $composableBuilder(
    column: $table.fileType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnail => $composableBuilder(
    column: $table.thumbnail,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sequence => $composableBuilder(
    column: $table.sequence,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isServerFile => $composableBuilder(
    column: $table.isServerFile,
    builder: (column) => ColumnFilters(column),
  );
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

  ColumnOrderings<int> get docId => $composableBuilder(
    column: $table.docId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileType => $composableBuilder(
    column: $table.fileType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnail => $composableBuilder(
    column: $table.thumbnail,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sequence => $composableBuilder(
    column: $table.sequence,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isServerFile => $composableBuilder(
    column: $table.isServerFile,
    builder: (column) => ColumnOrderings(column),
  );
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

  GeneratedColumn<int> get docId =>
      $composableBuilder(column: $table.docId, builder: (column) => column);

  GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  GeneratedColumn<String> get fileType =>
      $composableBuilder(column: $table.fileType, builder: (column) => column);

  GeneratedColumn<String> get thumbnail =>
      $composableBuilder(column: $table.thumbnail, builder: (column) => column);

  GeneratedColumn<int> get sequence =>
      $composableBuilder(column: $table.sequence, builder: (column) => column);

  GeneratedColumn<bool> get isServerFile => $composableBuilder(
    column: $table.isServerFile,
    builder: (column) => column,
  );
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
          (
            DocMediaEntry,
            BaseReferences<_$AppDatabase, $DocMediaTableTable, DocMediaEntry>,
          ),
          DocMediaEntry,
          PrefetchHooks Function()
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
                Value<String?> filePath = const Value.absent(),
                Value<String> fileType = const Value.absent(),
                Value<String?> thumbnail = const Value.absent(),
                Value<int> sequence = const Value.absent(),
                Value<bool> isServerFile = const Value.absent(),
              }) => DocMediaTableCompanion(
                id: id,
                docId: docId,
                filePath: filePath,
                fileType: fileType,
                thumbnail: thumbnail,
                sequence: sequence,
                isServerFile: isServerFile,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int docId,
                Value<String?> filePath = const Value.absent(),
                Value<String> fileType = const Value.absent(),
                Value<String?> thumbnail = const Value.absent(),
                Value<int> sequence = const Value.absent(),
                Value<bool> isServerFile = const Value.absent(),
              }) => DocMediaTableCompanion.insert(
                id: id,
                docId: docId,
                filePath: filePath,
                fileType: fileType,
                thumbnail: thumbnail,
                sequence: sequence,
                isServerFile: isServerFile,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
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
      (
        DocMediaEntry,
        BaseReferences<_$AppDatabase, $DocMediaTableTable, DocMediaEntry>,
      ),
      DocMediaEntry,
      PrefetchHooks Function()
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

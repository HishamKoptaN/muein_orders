// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CachedDocsTableTable extends CachedDocsTable
    with TableInfo<$CachedDocsTableTable, CachedDocEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CachedDocsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<int> docId = GeneratedColumn<int>(
    'doc_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  late final GeneratedColumnWithTypeConverter<DocFile?, String> imageOne =
      GeneratedColumn<String>(
        'image_one',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<DocFile?>($CachedDocsTableTable.$converterimageOnen);
  @override
  late final GeneratedColumnWithTypeConverter<DocFile?, String> imageTwo =
      GeneratedColumn<String>(
        'image_two',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<DocFile?>($CachedDocsTableTable.$converterimageTwon);
  @override
  late final GeneratedColumnWithTypeConverter<DocFile?, String> videoOne =
      GeneratedColumn<String>(
        'video_one',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<DocFile?>($CachedDocsTableTable.$convertervideoOnen);
  @override
  late final GeneratedColumnWithTypeConverter<DocFile?, String> videoTwo =
      GeneratedColumn<String>(
        'video_two',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<DocFile?>($CachedDocsTableTable.$convertervideoTwon);
  @override
  late final GeneratedColumnWithTypeConverter<LocationDoc?, String> location =
      GeneratedColumn<String>(
        'location',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      ).withConverter<LocationDoc?>($CachedDocsTableTable.$converterlocationn);
  static const VerificationMeta _uploadStatusMeta = const VerificationMeta(
    'uploadStatus',
  );
  @override
  late final GeneratedColumn<String> uploadStatus = GeneratedColumn<String>(
    'upload_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: Constant(FileUploadStatus.init.name),
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
    docId,
    imageOne,
    imageTwo,
    videoOne,
    videoTwo,
    location,
    uploadStatus,
    uploadProgress,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cached_docs_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CachedDocEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('doc_id')) {
      context.handle(
        _docIdMeta,
        docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta),
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
  Set<GeneratedColumn> get $primaryKey => {docId};
  @override
  CachedDocEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CachedDocEntry(
      docId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}doc_id'],
      )!,
      imageOne: $CachedDocsTableTable.$converterimageOnen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}image_one'],
        ),
      ),
      imageTwo: $CachedDocsTableTable.$converterimageTwon.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}image_two'],
        ),
      ),
      videoOne: $CachedDocsTableTable.$convertervideoOnen.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}video_one'],
        ),
      ),
      videoTwo: $CachedDocsTableTable.$convertervideoTwon.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}video_two'],
        ),
      ),
      location: $CachedDocsTableTable.$converterlocationn.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}location'],
        ),
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
  $CachedDocsTableTable createAlias(String alias) {
    return $CachedDocsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<DocFile, String> $converterimageOne =
      const DocFileConverter();
  static TypeConverter<DocFile?, String?> $converterimageOnen =
      NullAwareTypeConverter.wrap($converterimageOne);
  static TypeConverter<DocFile, String> $converterimageTwo =
      const DocFileConverter();
  static TypeConverter<DocFile?, String?> $converterimageTwon =
      NullAwareTypeConverter.wrap($converterimageTwo);
  static TypeConverter<DocFile, String> $convertervideoOne =
      const DocFileConverter();
  static TypeConverter<DocFile?, String?> $convertervideoOnen =
      NullAwareTypeConverter.wrap($convertervideoOne);
  static TypeConverter<DocFile, String> $convertervideoTwo =
      const DocFileConverter();
  static TypeConverter<DocFile?, String?> $convertervideoTwon =
      NullAwareTypeConverter.wrap($convertervideoTwo);
  static TypeConverter<LocationDoc, String> $converterlocation =
      const LocationDocConverter();
  static TypeConverter<LocationDoc?, String?> $converterlocationn =
      NullAwareTypeConverter.wrap($converterlocation);
}

class CachedDocEntry extends DataClass implements Insertable<CachedDocEntry> {
  final int docId;
  final DocFile? imageOne;
  final DocFile? imageTwo;
  final DocFile? videoOne;
  final DocFile? videoTwo;
  final LocationDoc? location;
  final String uploadStatus;
  final double uploadProgress;
  const CachedDocEntry({
    required this.docId,
    this.imageOne,
    this.imageTwo,
    this.videoOne,
    this.videoTwo,
    this.location,
    required this.uploadStatus,
    required this.uploadProgress,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['doc_id'] = Variable<int>(docId);
    if (!nullToAbsent || imageOne != null) {
      map['image_one'] = Variable<String>(
        $CachedDocsTableTable.$converterimageOnen.toSql(imageOne),
      );
    }
    if (!nullToAbsent || imageTwo != null) {
      map['image_two'] = Variable<String>(
        $CachedDocsTableTable.$converterimageTwon.toSql(imageTwo),
      );
    }
    if (!nullToAbsent || videoOne != null) {
      map['video_one'] = Variable<String>(
        $CachedDocsTableTable.$convertervideoOnen.toSql(videoOne),
      );
    }
    if (!nullToAbsent || videoTwo != null) {
      map['video_two'] = Variable<String>(
        $CachedDocsTableTable.$convertervideoTwon.toSql(videoTwo),
      );
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(
        $CachedDocsTableTable.$converterlocationn.toSql(location),
      );
    }
    map['upload_status'] = Variable<String>(uploadStatus);
    map['upload_progress'] = Variable<double>(uploadProgress);
    return map;
  }

  CachedDocsTableCompanion toCompanion(bool nullToAbsent) {
    return CachedDocsTableCompanion(
      docId: Value(docId),
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
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
      uploadStatus: Value(uploadStatus),
      uploadProgress: Value(uploadProgress),
    );
  }

  factory CachedDocEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CachedDocEntry(
      docId: serializer.fromJson<int>(json['docId']),
      imageOne: serializer.fromJson<DocFile?>(json['imageOne']),
      imageTwo: serializer.fromJson<DocFile?>(json['imageTwo']),
      videoOne: serializer.fromJson<DocFile?>(json['videoOne']),
      videoTwo: serializer.fromJson<DocFile?>(json['videoTwo']),
      location: serializer.fromJson<LocationDoc?>(json['location']),
      uploadStatus: serializer.fromJson<String>(json['uploadStatus']),
      uploadProgress: serializer.fromJson<double>(json['uploadProgress']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'docId': serializer.toJson<int>(docId),
      'imageOne': serializer.toJson<DocFile?>(imageOne),
      'imageTwo': serializer.toJson<DocFile?>(imageTwo),
      'videoOne': serializer.toJson<DocFile?>(videoOne),
      'videoTwo': serializer.toJson<DocFile?>(videoTwo),
      'location': serializer.toJson<LocationDoc?>(location),
      'uploadStatus': serializer.toJson<String>(uploadStatus),
      'uploadProgress': serializer.toJson<double>(uploadProgress),
    };
  }

  CachedDocEntry copyWith({
    int? docId,
    Value<DocFile?> imageOne = const Value.absent(),
    Value<DocFile?> imageTwo = const Value.absent(),
    Value<DocFile?> videoOne = const Value.absent(),
    Value<DocFile?> videoTwo = const Value.absent(),
    Value<LocationDoc?> location = const Value.absent(),
    String? uploadStatus,
    double? uploadProgress,
  }) => CachedDocEntry(
    docId: docId ?? this.docId,
    imageOne: imageOne.present ? imageOne.value : this.imageOne,
    imageTwo: imageTwo.present ? imageTwo.value : this.imageTwo,
    videoOne: videoOne.present ? videoOne.value : this.videoOne,
    videoTwo: videoTwo.present ? videoTwo.value : this.videoTwo,
    location: location.present ? location.value : this.location,
    uploadStatus: uploadStatus ?? this.uploadStatus,
    uploadProgress: uploadProgress ?? this.uploadProgress,
  );
  CachedDocEntry copyWithCompanion(CachedDocsTableCompanion data) {
    return CachedDocEntry(
      docId: data.docId.present ? data.docId.value : this.docId,
      imageOne: data.imageOne.present ? data.imageOne.value : this.imageOne,
      imageTwo: data.imageTwo.present ? data.imageTwo.value : this.imageTwo,
      videoOne: data.videoOne.present ? data.videoOne.value : this.videoOne,
      videoTwo: data.videoTwo.present ? data.videoTwo.value : this.videoTwo,
      location: data.location.present ? data.location.value : this.location,
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
    return (StringBuffer('CachedDocEntry(')
          ..write('docId: $docId, ')
          ..write('imageOne: $imageOne, ')
          ..write('imageTwo: $imageTwo, ')
          ..write('videoOne: $videoOne, ')
          ..write('videoTwo: $videoTwo, ')
          ..write('location: $location, ')
          ..write('uploadStatus: $uploadStatus, ')
          ..write('uploadProgress: $uploadProgress')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    docId,
    imageOne,
    imageTwo,
    videoOne,
    videoTwo,
    location,
    uploadStatus,
    uploadProgress,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CachedDocEntry &&
          other.docId == this.docId &&
          other.imageOne == this.imageOne &&
          other.imageTwo == this.imageTwo &&
          other.videoOne == this.videoOne &&
          other.videoTwo == this.videoTwo &&
          other.location == this.location &&
          other.uploadStatus == this.uploadStatus &&
          other.uploadProgress == this.uploadProgress);
}

class CachedDocsTableCompanion extends UpdateCompanion<CachedDocEntry> {
  final Value<int> docId;
  final Value<DocFile?> imageOne;
  final Value<DocFile?> imageTwo;
  final Value<DocFile?> videoOne;
  final Value<DocFile?> videoTwo;
  final Value<LocationDoc?> location;
  final Value<String> uploadStatus;
  final Value<double> uploadProgress;
  const CachedDocsTableCompanion({
    this.docId = const Value.absent(),
    this.imageOne = const Value.absent(),
    this.imageTwo = const Value.absent(),
    this.videoOne = const Value.absent(),
    this.videoTwo = const Value.absent(),
    this.location = const Value.absent(),
    this.uploadStatus = const Value.absent(),
    this.uploadProgress = const Value.absent(),
  });
  CachedDocsTableCompanion.insert({
    this.docId = const Value.absent(),
    this.imageOne = const Value.absent(),
    this.imageTwo = const Value.absent(),
    this.videoOne = const Value.absent(),
    this.videoTwo = const Value.absent(),
    this.location = const Value.absent(),
    this.uploadStatus = const Value.absent(),
    this.uploadProgress = const Value.absent(),
  });
  static Insertable<CachedDocEntry> custom({
    Expression<int>? docId,
    Expression<String>? imageOne,
    Expression<String>? imageTwo,
    Expression<String>? videoOne,
    Expression<String>? videoTwo,
    Expression<String>? location,
    Expression<String>? uploadStatus,
    Expression<double>? uploadProgress,
  }) {
    return RawValuesInsertable({
      if (docId != null) 'doc_id': docId,
      if (imageOne != null) 'image_one': imageOne,
      if (imageTwo != null) 'image_two': imageTwo,
      if (videoOne != null) 'video_one': videoOne,
      if (videoTwo != null) 'video_two': videoTwo,
      if (location != null) 'location': location,
      if (uploadStatus != null) 'upload_status': uploadStatus,
      if (uploadProgress != null) 'upload_progress': uploadProgress,
    });
  }

  CachedDocsTableCompanion copyWith({
    Value<int>? docId,
    Value<DocFile?>? imageOne,
    Value<DocFile?>? imageTwo,
    Value<DocFile?>? videoOne,
    Value<DocFile?>? videoTwo,
    Value<LocationDoc?>? location,
    Value<String>? uploadStatus,
    Value<double>? uploadProgress,
  }) {
    return CachedDocsTableCompanion(
      docId: docId ?? this.docId,
      imageOne: imageOne ?? this.imageOne,
      imageTwo: imageTwo ?? this.imageTwo,
      videoOne: videoOne ?? this.videoOne,
      videoTwo: videoTwo ?? this.videoTwo,
      location: location ?? this.location,
      uploadStatus: uploadStatus ?? this.uploadStatus,
      uploadProgress: uploadProgress ?? this.uploadProgress,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (docId.present) {
      map['doc_id'] = Variable<int>(docId.value);
    }
    if (imageOne.present) {
      map['image_one'] = Variable<String>(
        $CachedDocsTableTable.$converterimageOnen.toSql(imageOne.value),
      );
    }
    if (imageTwo.present) {
      map['image_two'] = Variable<String>(
        $CachedDocsTableTable.$converterimageTwon.toSql(imageTwo.value),
      );
    }
    if (videoOne.present) {
      map['video_one'] = Variable<String>(
        $CachedDocsTableTable.$convertervideoOnen.toSql(videoOne.value),
      );
    }
    if (videoTwo.present) {
      map['video_two'] = Variable<String>(
        $CachedDocsTableTable.$convertervideoTwon.toSql(videoTwo.value),
      );
    }
    if (location.present) {
      map['location'] = Variable<String>(
        $CachedDocsTableTable.$converterlocationn.toSql(location.value),
      );
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
    return (StringBuffer('CachedDocsTableCompanion(')
          ..write('docId: $docId, ')
          ..write('imageOne: $imageOne, ')
          ..write('imageTwo: $imageTwo, ')
          ..write('videoOne: $videoOne, ')
          ..write('videoTwo: $videoTwo, ')
          ..write('location: $location, ')
          ..write('uploadStatus: $uploadStatus, ')
          ..write('uploadProgress: $uploadProgress')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CachedDocsTableTable cachedDocsTable = $CachedDocsTableTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cachedDocsTable];
}

typedef $$CachedDocsTableTableCreateCompanionBuilder =
    CachedDocsTableCompanion Function({
      Value<int> docId,
      Value<DocFile?> imageOne,
      Value<DocFile?> imageTwo,
      Value<DocFile?> videoOne,
      Value<DocFile?> videoTwo,
      Value<LocationDoc?> location,
      Value<String> uploadStatus,
      Value<double> uploadProgress,
    });
typedef $$CachedDocsTableTableUpdateCompanionBuilder =
    CachedDocsTableCompanion Function({
      Value<int> docId,
      Value<DocFile?> imageOne,
      Value<DocFile?> imageTwo,
      Value<DocFile?> videoOne,
      Value<DocFile?> videoTwo,
      Value<LocationDoc?> location,
      Value<String> uploadStatus,
      Value<double> uploadProgress,
    });

class $$CachedDocsTableTableFilterComposer
    extends Composer<_$AppDatabase, $CachedDocsTableTable> {
  $$CachedDocsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get docId => $composableBuilder(
    column: $table.docId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<DocFile?, DocFile, String> get imageOne =>
      $composableBuilder(
        column: $table.imageOne,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<DocFile?, DocFile, String> get imageTwo =>
      $composableBuilder(
        column: $table.imageTwo,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<DocFile?, DocFile, String> get videoOne =>
      $composableBuilder(
        column: $table.videoOne,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<DocFile?, DocFile, String> get videoTwo =>
      $composableBuilder(
        column: $table.videoTwo,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnWithTypeConverterFilters<LocationDoc?, LocationDoc, String>
  get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnWithTypeConverterFilters(column),
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

class $$CachedDocsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CachedDocsTableTable> {
  $$CachedDocsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get docId => $composableBuilder(
    column: $table.docId,
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

  ColumnOrderings<String> get location => $composableBuilder(
    column: $table.location,
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

class $$CachedDocsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CachedDocsTableTable> {
  $$CachedDocsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get docId =>
      $composableBuilder(column: $table.docId, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DocFile?, String> get imageOne =>
      $composableBuilder(column: $table.imageOne, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DocFile?, String> get imageTwo =>
      $composableBuilder(column: $table.imageTwo, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DocFile?, String> get videoOne =>
      $composableBuilder(column: $table.videoOne, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DocFile?, String> get videoTwo =>
      $composableBuilder(column: $table.videoTwo, builder: (column) => column);

  GeneratedColumnWithTypeConverter<LocationDoc?, String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get uploadStatus => $composableBuilder(
    column: $table.uploadStatus,
    builder: (column) => column,
  );

  GeneratedColumn<double> get uploadProgress => $composableBuilder(
    column: $table.uploadProgress,
    builder: (column) => column,
  );
}

class $$CachedDocsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CachedDocsTableTable,
          CachedDocEntry,
          $$CachedDocsTableTableFilterComposer,
          $$CachedDocsTableTableOrderingComposer,
          $$CachedDocsTableTableAnnotationComposer,
          $$CachedDocsTableTableCreateCompanionBuilder,
          $$CachedDocsTableTableUpdateCompanionBuilder,
          (
            CachedDocEntry,
            BaseReferences<
              _$AppDatabase,
              $CachedDocsTableTable,
              CachedDocEntry
            >,
          ),
          CachedDocEntry,
          PrefetchHooks Function()
        > {
  $$CachedDocsTableTableTableManager(
    _$AppDatabase db,
    $CachedDocsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CachedDocsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CachedDocsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CachedDocsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> docId = const Value.absent(),
                Value<DocFile?> imageOne = const Value.absent(),
                Value<DocFile?> imageTwo = const Value.absent(),
                Value<DocFile?> videoOne = const Value.absent(),
                Value<DocFile?> videoTwo = const Value.absent(),
                Value<LocationDoc?> location = const Value.absent(),
                Value<String> uploadStatus = const Value.absent(),
                Value<double> uploadProgress = const Value.absent(),
              }) => CachedDocsTableCompanion(
                docId: docId,
                imageOne: imageOne,
                imageTwo: imageTwo,
                videoOne: videoOne,
                videoTwo: videoTwo,
                location: location,
                uploadStatus: uploadStatus,
                uploadProgress: uploadProgress,
              ),
          createCompanionCallback:
              ({
                Value<int> docId = const Value.absent(),
                Value<DocFile?> imageOne = const Value.absent(),
                Value<DocFile?> imageTwo = const Value.absent(),
                Value<DocFile?> videoOne = const Value.absent(),
                Value<DocFile?> videoTwo = const Value.absent(),
                Value<LocationDoc?> location = const Value.absent(),
                Value<String> uploadStatus = const Value.absent(),
                Value<double> uploadProgress = const Value.absent(),
              }) => CachedDocsTableCompanion.insert(
                docId: docId,
                imageOne: imageOne,
                imageTwo: imageTwo,
                videoOne: videoOne,
                videoTwo: videoTwo,
                location: location,
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

typedef $$CachedDocsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CachedDocsTableTable,
      CachedDocEntry,
      $$CachedDocsTableTableFilterComposer,
      $$CachedDocsTableTableOrderingComposer,
      $$CachedDocsTableTableAnnotationComposer,
      $$CachedDocsTableTableCreateCompanionBuilder,
      $$CachedDocsTableTableUpdateCompanionBuilder,
      (
        CachedDocEntry,
        BaseReferences<_$AppDatabase, $CachedDocsTableTable, CachedDocEntry>,
      ),
      CachedDocEntry,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CachedDocsTableTableTableManager get cachedDocsTable =>
      $$CachedDocsTableTableTableManager(_db, _db.cachedDocsTable);
}

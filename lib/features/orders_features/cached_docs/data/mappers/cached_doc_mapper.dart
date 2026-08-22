import 'dart:io';
import '../../../docs/data/models/docs_res_model.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../../../salla_orders_items/domain/entities/salla_order_items_res_entity.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../datasources/local_data_src/drift/app_database.dart';
import '../datasources/local_data_src/drift/tables/docs_table.dart';

extension ItemsEntryMapper on List<ItemEntry> {
  List<SallaOrderItemEntity> toEntity() {
    return map((e) {
      return SallaOrderItemEntity(
        id: e.id,
        printedName: '',
        sallaOrderItemUnits: [],
        sallaOrderItemStatus: SallaOrderItemStatusEntity(name: ''),
      );
    }).toList();
  }
}

extension ItemEntryMapper on ItemEntry {
  SallaOrderItemEntity toEntity() {
    return SallaOrderItemEntity(
      id: id,
      printedName: '',
      sallaOrderItemUnits: [],
      sallaOrderItemStatus: SallaOrderItemStatusEntity(name: ''),
    );
  }
}

extension CachedDocEntryMapper on DocEntry {
  DocEntity toEntity() {
    return DocEntity(
      id: id,
      latitude: location?.latitude.toString() ?? '',
      longitude: location?.longitude.toString() ?? '',
    );
  }
}


extension CreateCachedDocMapper on CreateCachedDocEntity {
  CreateCachedDocEntity toCreateCachedDocEntity({
    required DocsTable cachedDocEntry,
  }) {
    return CreateCachedDocEntity(
      docId: .dirty(value: docId?.toString() ?? ''),
      files: files.map((file) {
        return DocMediaEntity(
          filePath: file.filePath,
          fileUploadStatus: file.fileUploadStatus,
        );
      }).toList(),
      location: LocationEntity(
        latitude: location?.latitude,
        longitude: location?.longitude,
        fileUploadStatus: .init,
      ),
    );
  }
}

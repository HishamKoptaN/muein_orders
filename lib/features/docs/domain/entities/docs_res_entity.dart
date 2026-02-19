import 'package:flutter/material.dart';

class DocEntity {
  final int? id;
  final String? imageOne;
  final String? imageTwo;
  final String? thumbnailUrlOne;
  final String? thumbnailUrlTwo;
  final String? videoOne;
  final String? videoTwo;
  final String? latitude;
  final String? longitude;
  final int? sallaOrderProductId;
  final int? docStatusId;
  final String? adminNotes;
  final String? createdAt;
  final String? updatedAt;
  final DocStatusEntity? docStatus;

  DocEntity({
    this.id,
    this.imageOne,
    this.imageTwo,
    this.thumbnailUrlOne,
    this.thumbnailUrlTwo,
    this.videoOne,
    this.videoTwo,
    this.latitude,
    this.longitude,
    this.sallaOrderProductId,
    this.docStatusId,
    this.adminNotes,
    this.createdAt,
    this.updatedAt,
    this.docStatus,
  });

  DocEntity copyWith({
    int? id,
    String? imageOne,
    String? imageTwo,
    String? videoOne,
    String? videoTwo,
    String? latitude,
    String? longitude,
    int? sallaOrderProductId,
    int? docStatusId,
    String? adminNotes,
    String? createdAt,
    String? updatedAt,
    DocStatusEntity? docStatus,
  }) => DocEntity(
    id: id ?? this.id,
    imageOne: imageOne ?? this.imageOne,
    imageTwo: imageTwo ?? this.imageTwo,
    videoOne: videoOne ?? this.videoOne,
    videoTwo: videoTwo ?? this.videoTwo,
    latitude: latitude ?? this.latitude,
    longitude: longitude ?? this.longitude,
    sallaOrderProductId: sallaOrderProductId ?? this.sallaOrderProductId,
    docStatusId: docStatusId ?? this.docStatusId,
    adminNotes: adminNotes ?? this.adminNotes,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    docStatus: docStatus ?? this.docStatus,
  );
}

class DocStatusEntity {
  final int? id;
  final String? name;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? iconColor;
  final String? createdAt;
  final String? updatedAt;

  DocStatusEntity({
    this.id,
    this.name,
    this.textColor,
    this.backgroundColor,
    this.iconColor,
    this.createdAt,
    this.updatedAt,
  });

  DocStatusEntity copyWith({
    int? id,
    String? name,
    Color? textColor,
    Color? backgroundColor,
    Color? iconColor,
    String? createdAt,
    String? updatedAt,
  }) => DocStatusEntity(
    id: id ?? this.id,
    name: name ?? this.name,
    textColor: textColor ?? this.textColor,
    backgroundColor: backgroundColor ?? this.backgroundColor,
    iconColor: iconColor ?? this.iconColor,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
}

import 'dart:io';

class ProfileResEntity {
  final int? id;
  final String? avatar;
  final String? name;
  final String? email;
  final dynamic phone;
  final bool? status;
  final int? onlineOffline;
  final String? firebaseUid;
  final String? createdAt;
  final String? updatedAt;
  final File? selectedImage;

  ProfileResEntity({
    this.id,
    this.name,
    this.avatar,
    this.email,
    this.phone,
    this.status,
    this.onlineOffline,
    this.firebaseUid,
    this.createdAt,
    this.updatedAt,
    this.selectedImage,
  });

  ProfileResEntity copyWith({
    int? id,
    String? avatar,
    String? name,
    String? email,
    dynamic phone,
    bool? status,
    int? onlineOffline,
    String? firebaseUid,
    String? createdAt,
    String? updatedAt,
    File? selectedImage,
  }) => ProfileResEntity(
    id: id ?? this.id,
    avatar: avatar ?? this.avatar,
    name: name ?? this.name,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    status: status ?? this.status,
    onlineOffline: onlineOffline ?? this.onlineOffline,
    firebaseUid: firebaseUid ?? this.firebaseUid,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    selectedImage: selectedImage ?? this.selectedImage,
  );
  bool isEdited({required ProfileResEntity original}) {
    return (name?.trim() != original.name?.trim()) ||
        (phone?.trim() != original.phone?.trim()) ||
        (selectedImage != null && selectedImage!.path != original.avatar);
  }
}

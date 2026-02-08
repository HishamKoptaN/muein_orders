class ProfileResEntity {
  ProfileResEntity({
    this.id,
    this.image,
    this.name,
    this.phone,
    this.email,
    this.createdAt,
  });

  final int? id;
  final String? image;
  final String? name;
  final String? phone;
  final String? email;
  final String? createdAt;

  ProfileResEntity copyWith({
    int? id,
    String? image,
    String? name,
    String? phone,
    String? email,
    String? createdAt,
  }) {
    return ProfileResEntity(
      id: id ?? this.id,
      image: image ?? this.image,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'ProfileResEntity(id: $id, name: $name, phone: $phone, email: $email, createdAt: $createdAt, image: $image)';
  }
}

class ProfileResEntity {
  ProfileResEntity({
    this.id,
    this.avatar,
    this.name,
    this.phone,
    this.email,
    this.createdAt,
  });

  final int? id;
  final String? avatar;
  final String? name;
  final String? phone;
  final String? email;
  final String? createdAt;

  ProfileResEntity copyWith({
    int? id,
    String? avatar,
    String? name,
    String? email,
    String? phone,
    String? createdAt,
  }) {
    return ProfileResEntity(
      id: id ?? this.id,
      avatar: avatar ?? this.avatar,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  String toString() {
    return 'ProfileResEntity(id: $id, name: $name, phone: $phone, email: $email, createdAt: $createdAt, avatar: $avatar)';
  }
}

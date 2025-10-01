import '../../domain/entities/profile_res_entity.dart';
import 'profile_res_model.dart';

extension ProfileModelX on ProfileResModel {
  ProfileResEntity toEntity() {
    return ProfileResEntity(
      id: id ?? 0,
      name: name ?? '',
      image: image ?? '',
      phone: phone ?? '',
      createdAt: createdAt ?? '',
      email: email ?? '',
      balance: balance?.toEntity() ??
          BalanceEntity(
            currentBalance: '',
            totalEarned: '',
            totalSpent: '',
            pendingBalance: '',
            currency: '',
          ),
    );
  }
}

extension BalanceX on Balance {
  BalanceEntity toEntity() {
    return BalanceEntity(
      currentBalance: currentBalance ?? '',
      totalEarned: totalEarned ?? '',
      totalSpent: totalSpent ?? '',
      pendingBalance: pendingBalance ?? '',
      currency: currency ?? '',
    );
  }
}

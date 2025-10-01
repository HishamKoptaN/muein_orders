// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResModelImpl _$$ProfileResModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      balance: json['balance'] == null
          ? null
          : Balance.fromJson(json['balance'] as Map<String, dynamic>),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$ProfileResModelImplToJson(
        _$ProfileResModelImpl instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.name case final value?) 'name': value,
      if (instance.image case final value?) 'image': value,
      if (instance.phone case final value?) 'phone': value,
      if (instance.email case final value?) 'email': value,
      if (instance.balance?.toJson() case final value?) 'balance': value,
      if (instance.createdAt case final value?) 'created_at': value,
    };

_$BalanceImpl _$$BalanceImplFromJson(Map<String, dynamic> json) =>
    _$BalanceImpl(
      currentBalance: json['current_balance'] as String?,
      totalEarned: json['total_earned'] as String?,
      totalSpent: json['total_spent'] as String?,
      pendingBalance: json['pending_balance'] as String?,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$BalanceImplToJson(_$BalanceImpl instance) =>
    <String, dynamic>{
      if (instance.currentBalance case final value?) 'current_balance': value,
      if (instance.totalEarned case final value?) 'total_earned': value,
      if (instance.totalSpent case final value?) 'total_spent': value,
      if (instance.pendingBalance case final value?) 'pending_balance': value,
      if (instance.currency case final value?) 'currency': value,
    };

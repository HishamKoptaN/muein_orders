// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
part of 'docs_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocsState _$DocsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _DocsState.fromJson(json);
    case 'loading':
      return _LoadInProgress.fromJson(json);
    case 'success':
      return _Success.fromJson(json);
    case 'loaded':
      return _Loaded.fromJson(json);
    case 'failure':
      return _Failure.fromJson(json);
    case 'backgroundMonitoringActive':
      return _BackgroundMonitoringActive.fromJson(json);
    case 'backgroundMonitoringInactive':
      return _BackgroundMonitoringInactive.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DocsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

Map<String, dynamic> _$DocsStateToJson(DocsState instance) =>
    <String, dynamic>{
      'runtimeType': instance.runtimeType.toString(),
      ...instance.when(
        loading: () => _LoadInProgress().toJson(),
        success: () => _Success().toJson(),
        loaded: (docs, hasMore) => _Loaded(docs: docs, hasMore: hasMore).toJson(),
        failure: (apiErrorModel) => _Failure(apiErrorModel: apiErrorModel).toJson(),
        backgroundMonitoringActive: () => _BackgroundMonitoringActive().toJson(),
        backgroundMonitoringInactive: () => _BackgroundMonitoringInactive().toJson(),
      ),
    };

class _DocsState extends DocsState {
  const _DocsState() : super._();

  factory _DocsState.fromJson(Map<String, dynamic> json) =>
      _$DocsStateFromJson(json);

  Map<String, dynamic> toJson() => _$DocsStateToJson(this);
}

class _LoadInProgress extends DocsState {
  const _LoadInProgress() : super._();

  factory _LoadInProgress.fromJson(Map<String, dynamic> json) =>
      const _LoadInProgress();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

class _Success extends DocsState {
  const _Success() : super._();

  factory _Success.fromJson(Map<String, dynamic> json) => const _Success();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

class _Loaded extends DocsState {
  const _Loaded({this.docs, this.hasMore}) : super._();

  factory _Loaded.fromJson(Map<String, dynamic> json) => _Loaded(
        docs: (json['docs'] as List<dynamic>?)
            ?.map((e) => DocEntity.fromJson(e as Map<String, dynamic>))
            .toList(),
        hasMore: json['hasMore'] as bool?,
      );

  @override
  final List<DocEntity>? docs;
  @override
  final bool? hasMore;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'docs': docs?.map((e) => e.toJson()).toList(),
        'hasMore': hasMore,
      };
}

class _Failure extends DocsState {
  const _Failure({required this.apiErrorModel}) : super._();

  factory _Failure.fromJson(Map<String, dynamic> json) => _Failure(
        apiErrorModel: ApiErrorModel.fromJson(json['apiErrorModel'] as Map<String, dynamic>),
      );

  @override
  final ApiErrorModel apiErrorModel;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'apiErrorModel': apiErrorModel.toJson(),
      };
}

class _BackgroundMonitoringActive extends DocsState {
  const _BackgroundMonitoringActive() : super._();

  factory _BackgroundMonitoringActive.fromJson(Map<String, dynamic> json) =>
      const _BackgroundMonitoringActive();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

class _BackgroundMonitoringInactive extends DocsState {
  const _BackgroundMonitoringInactive() : super._();

  factory _BackgroundMonitoringInactive.fromJson(Map<String, dynamic> json) =>
      const _BackgroundMonitoringInactive();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

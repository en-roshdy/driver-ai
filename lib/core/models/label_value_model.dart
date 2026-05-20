import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_value_model.freezed.dart';
part 'label_value_model.g.dart';

@Freezed(genericArgumentFactories: true)
class LabelValueModel<T> with _$LabelValueModel<T> {
  const factory LabelValueModel({
    @JsonKey(name: 'label') required String label,
    @JsonKey(name: 'value') required T value,
  }) = _LabelValueModel;

  factory LabelValueModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$LabelValueModelFromJson(json, fromJsonT);
}

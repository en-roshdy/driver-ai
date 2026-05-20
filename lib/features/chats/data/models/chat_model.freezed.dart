// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) {
  return _ChatModel.fromJson(json);
}

/// @nodoc
mixin _$ChatModel {
  @JsonKey(name: 'chat_id')
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_last_message_text')
  String get lastMessageText => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_last_message_date')
  String get lastMessageDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_member')
  ChatMemberModel get member => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_unread_messages_count')
  int get unreadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int get orderId => throw _privateConstructorUsedError;

  /// Serializes this ChatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatModelCopyWith<ChatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatModelCopyWith<$Res> {
  factory $ChatModelCopyWith(ChatModel value, $Res Function(ChatModel) then) =
      _$ChatModelCopyWithImpl<$Res, ChatModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'chat_id') int chatId,
    @JsonKey(name: 'chat_last_message_text') String lastMessageText,
    @JsonKey(name: 'chat_last_message_date') String lastMessageDate,
    @JsonKey(name: 'chat_member') ChatMemberModel member,
    @JsonKey(name: 'chat_unread_messages_count') int unreadCount,
    @JsonKey(name: 'order_id') int orderId,
  });

  $ChatMemberModelCopyWith<$Res> get member;
}

/// @nodoc
class _$ChatModelCopyWithImpl<$Res, $Val extends ChatModel>
    implements $ChatModelCopyWith<$Res> {
  _$ChatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? lastMessageText = null,
    Object? lastMessageDate = null,
    Object? member = null,
    Object? unreadCount = null,
    Object? orderId = null,
  }) {
    return _then(
      _value.copyWith(
            chatId: null == chatId
                ? _value.chatId
                : chatId // ignore: cast_nullable_to_non_nullable
                      as int,
            lastMessageText: null == lastMessageText
                ? _value.lastMessageText
                : lastMessageText // ignore: cast_nullable_to_non_nullable
                      as String,
            lastMessageDate: null == lastMessageDate
                ? _value.lastMessageDate
                : lastMessageDate // ignore: cast_nullable_to_non_nullable
                      as String,
            member: null == member
                ? _value.member
                : member // ignore: cast_nullable_to_non_nullable
                      as ChatMemberModel,
            unreadCount: null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
            orderId: null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMemberModelCopyWith<$Res> get member {
    return $ChatMemberModelCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatModelImplCopyWith<$Res>
    implements $ChatModelCopyWith<$Res> {
  factory _$$ChatModelImplCopyWith(
    _$ChatModelImpl value,
    $Res Function(_$ChatModelImpl) then,
  ) = __$$ChatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'chat_id') int chatId,
    @JsonKey(name: 'chat_last_message_text') String lastMessageText,
    @JsonKey(name: 'chat_last_message_date') String lastMessageDate,
    @JsonKey(name: 'chat_member') ChatMemberModel member,
    @JsonKey(name: 'chat_unread_messages_count') int unreadCount,
    @JsonKey(name: 'order_id') int orderId,
  });

  @override
  $ChatMemberModelCopyWith<$Res> get member;
}

/// @nodoc
class __$$ChatModelImplCopyWithImpl<$Res>
    extends _$ChatModelCopyWithImpl<$Res, _$ChatModelImpl>
    implements _$$ChatModelImplCopyWith<$Res> {
  __$$ChatModelImplCopyWithImpl(
    _$ChatModelImpl _value,
    $Res Function(_$ChatModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? lastMessageText = null,
    Object? lastMessageDate = null,
    Object? member = null,
    Object? unreadCount = null,
    Object? orderId = null,
  }) {
    return _then(
      _$ChatModelImpl(
        chatId: null == chatId
            ? _value.chatId
            : chatId // ignore: cast_nullable_to_non_nullable
                  as int,
        lastMessageText: null == lastMessageText
            ? _value.lastMessageText
            : lastMessageText // ignore: cast_nullable_to_non_nullable
                  as String,
        lastMessageDate: null == lastMessageDate
            ? _value.lastMessageDate
            : lastMessageDate // ignore: cast_nullable_to_non_nullable
                  as String,
        member: null == member
            ? _value.member
            : member // ignore: cast_nullable_to_non_nullable
                  as ChatMemberModel,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
        orderId: null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatModelImpl extends _ChatModel {
  const _$ChatModelImpl({
    @JsonKey(name: 'chat_id') required this.chatId,
    @JsonKey(name: 'chat_last_message_text') required this.lastMessageText,
    @JsonKey(name: 'chat_last_message_date') required this.lastMessageDate,
    @JsonKey(name: 'chat_member') required this.member,
    @JsonKey(name: 'chat_unread_messages_count') required this.unreadCount,
    @JsonKey(name: 'order_id') required this.orderId,
  }) : super._();

  factory _$ChatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatModelImplFromJson(json);

  @override
  @JsonKey(name: 'chat_id')
  final int chatId;
  @override
  @JsonKey(name: 'chat_last_message_text')
  final String lastMessageText;
  @override
  @JsonKey(name: 'chat_last_message_date')
  final String lastMessageDate;
  @override
  @JsonKey(name: 'chat_member')
  final ChatMemberModel member;
  @override
  @JsonKey(name: 'chat_unread_messages_count')
  final int unreadCount;
  @override
  @JsonKey(name: 'order_id')
  final int orderId;

  @override
  String toString() {
    return 'ChatModel(chatId: $chatId, lastMessageText: $lastMessageText, lastMessageDate: $lastMessageDate, member: $member, unreadCount: $unreadCount, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatModelImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.lastMessageText, lastMessageText) ||
                other.lastMessageText == lastMessageText) &&
            (identical(other.lastMessageDate, lastMessageDate) ||
                other.lastMessageDate == lastMessageDate) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    chatId,
    lastMessageText,
    lastMessageDate,
    member,
    unreadCount,
    orderId,
  );

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      __$$ChatModelImplCopyWithImpl<_$ChatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatModelImplToJson(this);
  }
}

abstract class _ChatModel extends ChatModel {
  const factory _ChatModel({
    @JsonKey(name: 'chat_id') required final int chatId,
    @JsonKey(name: 'chat_last_message_text')
    required final String lastMessageText,
    @JsonKey(name: 'chat_last_message_date')
    required final String lastMessageDate,
    @JsonKey(name: 'chat_member') required final ChatMemberModel member,
    @JsonKey(name: 'chat_unread_messages_count') required final int unreadCount,
    @JsonKey(name: 'order_id') required final int orderId,
  }) = _$ChatModelImpl;
  const _ChatModel._() : super._();

  factory _ChatModel.fromJson(Map<String, dynamic> json) =
      _$ChatModelImpl.fromJson;

  @override
  @JsonKey(name: 'chat_id')
  int get chatId;
  @override
  @JsonKey(name: 'chat_last_message_text')
  String get lastMessageText;
  @override
  @JsonKey(name: 'chat_last_message_date')
  String get lastMessageDate;
  @override
  @JsonKey(name: 'chat_member')
  ChatMemberModel get member;
  @override
  @JsonKey(name: 'chat_unread_messages_count')
  int get unreadCount;
  @override
  @JsonKey(name: 'order_id')
  int get orderId;

  /// Create a copy of ChatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatModelImplCopyWith<_$ChatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMemberModel _$ChatMemberModelFromJson(Map<String, dynamic> json) {
  return _ChatMemberModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMemberModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this ChatMemberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMemberModelCopyWith<ChatMemberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMemberModelCopyWith<$Res> {
  factory $ChatMemberModelCopyWith(
    ChatMemberModel value,
    $Res Function(ChatMemberModel) then,
  ) = _$ChatMemberModelCopyWithImpl<$Res, ChatMemberModel>;
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class _$ChatMemberModelCopyWithImpl<$Res, $Val extends ChatMemberModel>
    implements $ChatMemberModelCopyWith<$Res> {
  _$ChatMemberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? image = freezed}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMemberModelImplCopyWith<$Res>
    implements $ChatMemberModelCopyWith<$Res> {
  factory _$$ChatMemberModelImplCopyWith(
    _$ChatMemberModelImpl value,
    $Res Function(_$ChatMemberModelImpl) then,
  ) = __$$ChatMemberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class __$$ChatMemberModelImplCopyWithImpl<$Res>
    extends _$ChatMemberModelCopyWithImpl<$Res, _$ChatMemberModelImpl>
    implements _$$ChatMemberModelImplCopyWith<$Res> {
  __$$ChatMemberModelImplCopyWithImpl(
    _$ChatMemberModelImpl _value,
    $Res Function(_$ChatMemberModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? image = freezed}) {
    return _then(
      _$ChatMemberModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        image: freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMemberModelImpl implements _ChatMemberModel {
  const _$ChatMemberModelImpl({
    required this.id,
    required this.name,
    this.image,
  });

  factory _$ChatMemberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMemberModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'ChatMemberModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMemberModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of ChatMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMemberModelImplCopyWith<_$ChatMemberModelImpl> get copyWith =>
      __$$ChatMemberModelImplCopyWithImpl<_$ChatMemberModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMemberModelImplToJson(this);
  }
}

abstract class _ChatMemberModel implements ChatMemberModel {
  const factory _ChatMemberModel({
    required final int id,
    required final String name,
    final String? image,
  }) = _$ChatMemberModelImpl;

  factory _ChatMemberModel.fromJson(Map<String, dynamic> json) =
      _$ChatMemberModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;

  /// Create a copy of ChatMemberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMemberModelImplCopyWith<_$ChatMemberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessageModel _$ChatMessageModelFromJson(Map<String, dynamic> json) {
  return _ChatMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageModel {
  @JsonKey(name: 'message_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_if_mine')
  bool get isMine => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_custom_date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageModelCopyWith<ChatMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageModelCopyWith<$Res> {
  factory $ChatMessageModelCopyWith(
    ChatMessageModel value,
    $Res Function(ChatMessageModel) then,
  ) = _$ChatMessageModelCopyWithImpl<$Res, ChatMessageModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'message_id') int id,
    @JsonKey(name: 'message_body') String body,
    @JsonKey(name: 'message_if_mine') bool isMine,
    @JsonKey(name: 'message_custom_date') String date,
    @JsonKey(name: 'message_type') String type,
  });
}

/// @nodoc
class _$ChatMessageModelCopyWithImpl<$Res, $Val extends ChatMessageModel>
    implements $ChatMessageModelCopyWith<$Res> {
  _$ChatMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? isMine = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            isMine: null == isMine
                ? _value.isMine
                : isMine // ignore: cast_nullable_to_non_nullable
                      as bool,
            date: null == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessageModelImplCopyWith<$Res>
    implements $ChatMessageModelCopyWith<$Res> {
  factory _$$ChatMessageModelImplCopyWith(
    _$ChatMessageModelImpl value,
    $Res Function(_$ChatMessageModelImpl) then,
  ) = __$$ChatMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'message_id') int id,
    @JsonKey(name: 'message_body') String body,
    @JsonKey(name: 'message_if_mine') bool isMine,
    @JsonKey(name: 'message_custom_date') String date,
    @JsonKey(name: 'message_type') String type,
  });
}

/// @nodoc
class __$$ChatMessageModelImplCopyWithImpl<$Res>
    extends _$ChatMessageModelCopyWithImpl<$Res, _$ChatMessageModelImpl>
    implements _$$ChatMessageModelImplCopyWith<$Res> {
  __$$ChatMessageModelImplCopyWithImpl(
    _$ChatMessageModelImpl _value,
    $Res Function(_$ChatMessageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? isMine = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(
      _$ChatMessageModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        isMine: null == isMine
            ? _value.isMine
            : isMine // ignore: cast_nullable_to_non_nullable
                  as bool,
        date: null == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageModelImpl extends _ChatMessageModel {
  const _$ChatMessageModelImpl({
    @JsonKey(name: 'message_id') required this.id,
    @JsonKey(name: 'message_body') required this.body,
    @JsonKey(name: 'message_if_mine') required this.isMine,
    @JsonKey(name: 'message_custom_date') required this.date,
    @JsonKey(name: 'message_type') required this.type,
  }) : super._();

  factory _$ChatMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageModelImplFromJson(json);

  @override
  @JsonKey(name: 'message_id')
  final int id;
  @override
  @JsonKey(name: 'message_body')
  final String body;
  @override
  @JsonKey(name: 'message_if_mine')
  final bool isMine;
  @override
  @JsonKey(name: 'message_custom_date')
  final String date;
  @override
  @JsonKey(name: 'message_type')
  final String type;

  @override
  String toString() {
    return 'ChatMessageModel(id: $id, body: $body, isMine: $isMine, date: $date, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, body, isMine, date, type);

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      __$$ChatMessageModelImplCopyWithImpl<_$ChatMessageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageModelImplToJson(this);
  }
}

abstract class _ChatMessageModel extends ChatMessageModel {
  const factory _ChatMessageModel({
    @JsonKey(name: 'message_id') required final int id,
    @JsonKey(name: 'message_body') required final String body,
    @JsonKey(name: 'message_if_mine') required final bool isMine,
    @JsonKey(name: 'message_custom_date') required final String date,
    @JsonKey(name: 'message_type') required final String type,
  }) = _$ChatMessageModelImpl;
  const _ChatMessageModel._() : super._();

  factory _ChatMessageModel.fromJson(Map<String, dynamic> json) =
      _$ChatMessageModelImpl.fromJson;

  @override
  @JsonKey(name: 'message_id')
  int get id;
  @override
  @JsonKey(name: 'message_body')
  String get body;
  @override
  @JsonKey(name: 'message_if_mine')
  bool get isMine;
  @override
  @JsonKey(name: 'message_custom_date')
  String get date;
  @override
  @JsonKey(name: 'message_type')
  String get type;

  /// Create a copy of ChatMessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageModelImplCopyWith<_$ChatMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

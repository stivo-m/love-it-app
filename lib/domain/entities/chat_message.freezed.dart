// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
class _$ChatMessageTearOff {
  const _$ChatMessageTearOff();

  _ChatMessage call(
      {String? sender, String? recipient, String? message, String? chatID}) {
    return _ChatMessage(
      sender: sender,
      recipient: recipient,
      message: message,
      chatID: chatID,
    );
  }

  ChatMessage fromJson(Map<String, Object?> json) {
    return ChatMessage.fromJson(json);
  }
}

/// @nodoc
const $ChatMessage = _$ChatMessageTearOff();

/// @nodoc
mixin _$ChatMessage {
  String? get sender => throw _privateConstructorUsedError;
  String? get recipient => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get chatID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call(
      {String? sender, String? recipient, String? message, String? chatID});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

  @override
  $Res call({
    Object? sender = freezed,
    Object? recipient = freezed,
    Object? message = freezed,
    Object? chatID = freezed,
  }) {
    return _then(_value.copyWith(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      chatID: chatID == freezed
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(
          _ChatMessage value, $Res Function(_ChatMessage) then) =
      __$ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? sender, String? recipient, String? message, String? chatID});
}

/// @nodoc
class __$ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(
      _ChatMessage _value, $Res Function(_ChatMessage) _then)
      : super(_value, (v) => _then(v as _ChatMessage));

  @override
  _ChatMessage get _value => super._value as _ChatMessage;

  @override
  $Res call({
    Object? sender = freezed,
    Object? recipient = freezed,
    Object? message = freezed,
    Object? chatID = freezed,
  }) {
    return _then(_ChatMessage(
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      chatID: chatID == freezed
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessage implements _ChatMessage {
  _$_ChatMessage({this.sender, this.recipient, this.message, this.chatID});

  factory _$_ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessageFromJson(json);

  @override
  final String? sender;
  @override
  final String? recipient;
  @override
  final String? message;
  @override
  final String? chatID;

  @override
  String toString() {
    return 'ChatMessage(sender: $sender, recipient: $recipient, message: $message, chatID: $chatID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatMessage &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.recipient, recipient) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.chatID, chatID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(recipient),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(chatID));

  @JsonKey(ignore: true)
  @override
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessageToJson(this);
  }
}

abstract class _ChatMessage implements ChatMessage {
  factory _ChatMessage(
      {String? sender,
      String? recipient,
      String? message,
      String? chatID}) = _$_ChatMessage;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatMessage.fromJson;

  @override
  String? get sender;
  @override
  String? get recipient;
  @override
  String? get message;
  @override
  String? get chatID;
  @override
  @JsonKey(ignore: true)
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

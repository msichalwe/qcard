// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlockedUsersRecord> _$blockedUsersRecordSerializer =
    new _$BlockedUsersRecordSerializer();

class _$BlockedUsersRecordSerializer
    implements StructuredSerializer<BlockedUsersRecord> {
  @override
  final Iterable<Type> types = const [BlockedUsersRecord, _$BlockedUsersRecord];
  @override
  final String wireName = 'BlockedUsersRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BlockedUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.blockedAt;
    if (value != null) {
      result
        ..add('blockedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BlockedUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlockedUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'blockedAt':
          result.blockedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BlockedUsersRecord extends BlockedUsersRecord {
  @override
  final DateTime? blockedAt;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BlockedUsersRecord(
          [void Function(BlockedUsersRecordBuilder)? updates]) =>
      (new BlockedUsersRecordBuilder()..update(updates))._build();

  _$BlockedUsersRecord._({this.blockedAt, this.user, this.ffRef}) : super._();

  @override
  BlockedUsersRecord rebuild(
          void Function(BlockedUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlockedUsersRecordBuilder toBuilder() =>
      new BlockedUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlockedUsersRecord &&
        blockedAt == other.blockedAt &&
        user == other.user &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, blockedAt.hashCode), user.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlockedUsersRecord')
          ..add('blockedAt', blockedAt)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BlockedUsersRecordBuilder
    implements Builder<BlockedUsersRecord, BlockedUsersRecordBuilder> {
  _$BlockedUsersRecord? _$v;

  DateTime? _blockedAt;
  DateTime? get blockedAt => _$this._blockedAt;
  set blockedAt(DateTime? blockedAt) => _$this._blockedAt = blockedAt;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BlockedUsersRecordBuilder() {
    BlockedUsersRecord._initializeBuilder(this);
  }

  BlockedUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockedAt = $v.blockedAt;
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlockedUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlockedUsersRecord;
  }

  @override
  void update(void Function(BlockedUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlockedUsersRecord build() => _build();

  _$BlockedUsersRecord _build() {
    final _$result = _$v ??
        new _$BlockedUsersRecord._(
            blockedAt: blockedAt, user: user, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

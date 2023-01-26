// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_codes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QrCodesRecord> _$qrCodesRecordSerializer =
    new _$QrCodesRecordSerializer();

class _$QrCodesRecordSerializer implements StructuredSerializer<QrCodesRecord> {
  @override
  final Iterable<Type> types = const [QrCodesRecord, _$QrCodesRecord];
  @override
  final String wireName = 'QrCodesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, QrCodesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  QrCodesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QrCodesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$QrCodesRecord extends QrCodesRecord {
  @override
  final DocumentReference<Object?>? userID;
  @override
  final String? data;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$QrCodesRecord([void Function(QrCodesRecordBuilder)? updates]) =>
      (new QrCodesRecordBuilder()..update(updates))._build();

  _$QrCodesRecord._({this.userID, this.data, this.createdAt, this.ffRef})
      : super._();

  @override
  QrCodesRecord rebuild(void Function(QrCodesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QrCodesRecordBuilder toBuilder() => new QrCodesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QrCodesRecord &&
        userID == other.userID &&
        data == other.data &&
        createdAt == other.createdAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userID.hashCode), data.hashCode), createdAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QrCodesRecord')
          ..add('userID', userID)
          ..add('data', data)
          ..add('createdAt', createdAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class QrCodesRecordBuilder
    implements Builder<QrCodesRecord, QrCodesRecordBuilder> {
  _$QrCodesRecord? _$v;

  DocumentReference<Object?>? _userID;
  DocumentReference<Object?>? get userID => _$this._userID;
  set userID(DocumentReference<Object?>? userID) => _$this._userID = userID;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  QrCodesRecordBuilder() {
    QrCodesRecord._initializeBuilder(this);
  }

  QrCodesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _data = $v.data;
      _createdAt = $v.createdAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QrCodesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QrCodesRecord;
  }

  @override
  void update(void Function(QrCodesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QrCodesRecord build() => _build();

  _$QrCodesRecord _build() {
    final _$result = _$v ??
        new _$QrCodesRecord._(
            userID: userID, data: data, createdAt: createdAt, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

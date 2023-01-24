// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScansRecord> _$scansRecordSerializer = new _$ScansRecordSerializer();

class _$ScansRecordSerializer implements StructuredSerializer<ScansRecord> {
  @override
  final Iterable<Type> types = const [ScansRecord, _$ScansRecord];
  @override
  final String wireName = 'ScansRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ScansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.qrCodeId;
    if (value != null) {
      result
        ..add('qrCodeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.scannedBy;
    if (value != null) {
      result
        ..add('scannedBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.scannedAt;
    if (value != null) {
      result
        ..add('scannedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ScansRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'qrCodeId':
          result.qrCodeId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'scannedBy':
          result.scannedBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'scannedAt':
          result.scannedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ScansRecord extends ScansRecord {
  @override
  final DocumentReference<Object?>? qrCodeId;
  @override
  final DocumentReference<Object?>? scannedBy;
  @override
  final DateTime? scannedAt;
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScansRecord([void Function(ScansRecordBuilder)? updates]) =>
      (new ScansRecordBuilder()..update(updates))._build();

  _$ScansRecord._(
      {this.qrCodeId, this.scannedBy, this.scannedAt, this.name, this.ffRef})
      : super._();

  @override
  ScansRecord rebuild(void Function(ScansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScansRecordBuilder toBuilder() => new ScansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScansRecord &&
        qrCodeId == other.qrCodeId &&
        scannedBy == other.scannedBy &&
        scannedAt == other.scannedAt &&
        name == other.name &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, qrCodeId.hashCode), scannedBy.hashCode),
                scannedAt.hashCode),
            name.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScansRecord')
          ..add('qrCodeId', qrCodeId)
          ..add('scannedBy', scannedBy)
          ..add('scannedAt', scannedAt)
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScansRecordBuilder implements Builder<ScansRecord, ScansRecordBuilder> {
  _$ScansRecord? _$v;

  DocumentReference<Object?>? _qrCodeId;
  DocumentReference<Object?>? get qrCodeId => _$this._qrCodeId;
  set qrCodeId(DocumentReference<Object?>? qrCodeId) =>
      _$this._qrCodeId = qrCodeId;

  DocumentReference<Object?>? _scannedBy;
  DocumentReference<Object?>? get scannedBy => _$this._scannedBy;
  set scannedBy(DocumentReference<Object?>? scannedBy) =>
      _$this._scannedBy = scannedBy;

  DateTime? _scannedAt;
  DateTime? get scannedAt => _$this._scannedAt;
  set scannedAt(DateTime? scannedAt) => _$this._scannedAt = scannedAt;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScansRecordBuilder() {
    ScansRecord._initializeBuilder(this);
  }

  ScansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _qrCodeId = $v.qrCodeId;
      _scannedBy = $v.scannedBy;
      _scannedAt = $v.scannedAt;
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScansRecord;
  }

  @override
  void update(void Function(ScansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScansRecord build() => _build();

  _$ScansRecord _build() {
    final _$result = _$v ??
        new _$ScansRecord._(
            qrCodeId: qrCodeId,
            scannedBy: scannedBy,
            scannedAt: scannedAt,
            name: name,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

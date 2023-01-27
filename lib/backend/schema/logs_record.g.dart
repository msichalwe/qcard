// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LogsRecord> _$logsRecordSerializer = new _$LogsRecordSerializer();

class _$LogsRecordSerializer implements StructuredSerializer<LogsRecord> {
  @override
  final Iterable<Type> types = const [LogsRecord, _$LogsRecord];
  @override
  final String wireName = 'LogsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LogsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
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
  LogsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LogsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
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

class _$LogsRecord extends LogsRecord {
  @override
  final DateTime? timestamp;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? userId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LogsRecord([void Function(LogsRecordBuilder)? updates]) =>
      (new LogsRecordBuilder()..update(updates))._build();

  _$LogsRecord._({this.timestamp, this.description, this.userId, this.ffRef})
      : super._();

  @override
  LogsRecord rebuild(void Function(LogsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogsRecordBuilder toBuilder() => new LogsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogsRecord &&
        timestamp == other.timestamp &&
        description == other.description &&
        userId == other.userId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, timestamp.hashCode), description.hashCode),
            userId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogsRecord')
          ..add('timestamp', timestamp)
          ..add('description', description)
          ..add('userId', userId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LogsRecordBuilder implements Builder<LogsRecord, LogsRecordBuilder> {
  _$LogsRecord? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LogsRecordBuilder() {
    LogsRecord._initializeBuilder(this);
  }

  LogsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _description = $v.description;
      _userId = $v.userId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LogsRecord;
  }

  @override
  void update(void Function(LogsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogsRecord build() => _build();

  _$LogsRecord _build() {
    final _$result = _$v ??
        new _$LogsRecord._(
            timestamp: timestamp,
            description: description,
            userId: userId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

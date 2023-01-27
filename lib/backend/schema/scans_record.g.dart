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
    value = object.scanedUserId;
    if (value != null) {
      result
        ..add('scanedUserId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.metaData;
    if (value != null) {
      result
        ..add('metaData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userImage;
    if (value != null) {
      result
        ..add('userImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ScansRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
        case 'scanedUserId':
          result.scanedUserId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'metaData':
          result.metaData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userImage':
          result.userImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ScansRecord extends ScansRecord {
  @override
  final DocumentReference<Object?>? scannedBy;
  @override
  final DateTime? scannedAt;
  @override
  final String? scanedUserId;
  @override
  final String? metaData;
  @override
  final String? userName;
  @override
  final String? userImage;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ScansRecord([void Function(ScansRecordBuilder)? updates]) =>
      (new ScansRecordBuilder()..update(updates))._build();

  _$ScansRecord._(
      {this.scannedBy,
      this.scannedAt,
      this.scanedUserId,
      this.metaData,
      this.userName,
      this.userImage,
      this.user,
      this.ffRef})
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
        scannedBy == other.scannedBy &&
        scannedAt == other.scannedAt &&
        scanedUserId == other.scanedUserId &&
        metaData == other.metaData &&
        userName == other.userName &&
        userImage == other.userImage &&
        user == other.user &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, scannedBy.hashCode), scannedAt.hashCode),
                            scanedUserId.hashCode),
                        metaData.hashCode),
                    userName.hashCode),
                userImage.hashCode),
            user.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScansRecord')
          ..add('scannedBy', scannedBy)
          ..add('scannedAt', scannedAt)
          ..add('scanedUserId', scanedUserId)
          ..add('metaData', metaData)
          ..add('userName', userName)
          ..add('userImage', userImage)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ScansRecordBuilder implements Builder<ScansRecord, ScansRecordBuilder> {
  _$ScansRecord? _$v;

  DocumentReference<Object?>? _scannedBy;
  DocumentReference<Object?>? get scannedBy => _$this._scannedBy;
  set scannedBy(DocumentReference<Object?>? scannedBy) =>
      _$this._scannedBy = scannedBy;

  DateTime? _scannedAt;
  DateTime? get scannedAt => _$this._scannedAt;
  set scannedAt(DateTime? scannedAt) => _$this._scannedAt = scannedAt;

  String? _scanedUserId;
  String? get scanedUserId => _$this._scanedUserId;
  set scanedUserId(String? scanedUserId) => _$this._scanedUserId = scanedUserId;

  String? _metaData;
  String? get metaData => _$this._metaData;
  set metaData(String? metaData) => _$this._metaData = metaData;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userImage;
  String? get userImage => _$this._userImage;
  set userImage(String? userImage) => _$this._userImage = userImage;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ScansRecordBuilder() {
    ScansRecord._initializeBuilder(this);
  }

  ScansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scannedBy = $v.scannedBy;
      _scannedAt = $v.scannedAt;
      _scanedUserId = $v.scanedUserId;
      _metaData = $v.metaData;
      _userName = $v.userName;
      _userImage = $v.userImage;
      _user = $v.user;
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
            scannedBy: scannedBy,
            scannedAt: scannedAt,
            scanedUserId: scanedUserId,
            metaData: metaData,
            userName: userName,
            userImage: userImage,
            user: user,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

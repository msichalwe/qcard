// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallary_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GallaryRecord> _$gallaryRecordSerializer =
    new _$GallaryRecordSerializer();

class _$GallaryRecordSerializer implements StructuredSerializer<GallaryRecord> {
  @override
  final Iterable<Type> types = const [GallaryRecord, _$GallaryRecord];
  @override
  final String wireName = 'GallaryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GallaryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.dateUploaded;
    if (value != null) {
      result
        ..add('dateUploaded')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.caption;
    if (value != null) {
      result
        ..add('caption')
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
  GallaryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GallaryRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dateUploaded':
          result.dateUploaded = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'caption':
          result.caption = serializers.deserialize(value,
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

class _$GallaryRecord extends GallaryRecord {
  @override
  final DateTime? dateUploaded;
  @override
  final String? imageUrl;
  @override
  final String? caption;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GallaryRecord([void Function(GallaryRecordBuilder)? updates]) =>
      (new GallaryRecordBuilder()..update(updates))._build();

  _$GallaryRecord._(
      {this.dateUploaded, this.imageUrl, this.caption, this.ffRef})
      : super._();

  @override
  GallaryRecord rebuild(void Function(GallaryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GallaryRecordBuilder toBuilder() => new GallaryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GallaryRecord &&
        dateUploaded == other.dateUploaded &&
        imageUrl == other.imageUrl &&
        caption == other.caption &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, dateUploaded.hashCode), imageUrl.hashCode),
            caption.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GallaryRecord')
          ..add('dateUploaded', dateUploaded)
          ..add('imageUrl', imageUrl)
          ..add('caption', caption)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GallaryRecordBuilder
    implements Builder<GallaryRecord, GallaryRecordBuilder> {
  _$GallaryRecord? _$v;

  DateTime? _dateUploaded;
  DateTime? get dateUploaded => _$this._dateUploaded;
  set dateUploaded(DateTime? dateUploaded) =>
      _$this._dateUploaded = dateUploaded;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _caption;
  String? get caption => _$this._caption;
  set caption(String? caption) => _$this._caption = caption;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GallaryRecordBuilder() {
    GallaryRecord._initializeBuilder(this);
  }

  GallaryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateUploaded = $v.dateUploaded;
      _imageUrl = $v.imageUrl;
      _caption = $v.caption;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GallaryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GallaryRecord;
  }

  @override
  void update(void Function(GallaryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GallaryRecord build() => _build();

  _$GallaryRecord _build() {
    final _$result = _$v ??
        new _$GallaryRecord._(
            dateUploaded: dateUploaded,
            imageUrl: imageUrl,
            caption: caption,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

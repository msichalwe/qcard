// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactsRecord> _$contactsRecordSerializer =
    new _$ContactsRecordSerializer();

class _$ContactsRecordSerializer
    implements StructuredSerializer<ContactsRecord> {
  @override
  final Iterable<Type> types = const [ContactsRecord, _$ContactsRecord];
  @override
  final String wireName = 'ContactsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ContactsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFavourite;
    if (value != null) {
      result
        ..add('isFavourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.customName;
    if (value != null) {
      result
        ..add('custom_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.blocked;
    if (value != null) {
      result
        ..add('blocked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.addedAt;
    if (value != null) {
      result
        ..add('addedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
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
  ContactsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFavourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'custom_name':
          result.customName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'blocked':
          result.blocked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'addedAt':
          result.addedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
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

class _$ContactsRecord extends ContactsRecord {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? imageUrl;
  @override
  final bool? isFavourite;
  @override
  final String? customName;
  @override
  final bool? blocked;
  @override
  final DateTime? addedAt;
  @override
  final DateTime? updatedAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ContactsRecord([void Function(ContactsRecordBuilder)? updates]) =>
      (new ContactsRecordBuilder()..update(updates))._build();

  _$ContactsRecord._(
      {this.name,
      this.email,
      this.phoneNumber,
      this.userRef,
      this.imageUrl,
      this.isFavourite,
      this.customName,
      this.blocked,
      this.addedAt,
      this.updatedAt,
      this.ffRef})
      : super._();

  @override
  ContactsRecord rebuild(void Function(ContactsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactsRecordBuilder toBuilder() =>
      new ContactsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactsRecord &&
        name == other.name &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        userRef == other.userRef &&
        imageUrl == other.imageUrl &&
        isFavourite == other.isFavourite &&
        customName == other.customName &&
        blocked == other.blocked &&
        addedAt == other.addedAt &&
        updatedAt == other.updatedAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, name.hashCode),
                                            email.hashCode),
                                        phoneNumber.hashCode),
                                    userRef.hashCode),
                                imageUrl.hashCode),
                            isFavourite.hashCode),
                        customName.hashCode),
                    blocked.hashCode),
                addedAt.hashCode),
            updatedAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContactsRecord')
          ..add('name', name)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('userRef', userRef)
          ..add('imageUrl', imageUrl)
          ..add('isFavourite', isFavourite)
          ..add('customName', customName)
          ..add('blocked', blocked)
          ..add('addedAt', addedAt)
          ..add('updatedAt', updatedAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ContactsRecordBuilder
    implements Builder<ContactsRecord, ContactsRecordBuilder> {
  _$ContactsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  String? _customName;
  String? get customName => _$this._customName;
  set customName(String? customName) => _$this._customName = customName;

  bool? _blocked;
  bool? get blocked => _$this._blocked;
  set blocked(bool? blocked) => _$this._blocked = blocked;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ContactsRecordBuilder() {
    ContactsRecord._initializeBuilder(this);
  }

  ContactsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _userRef = $v.userRef;
      _imageUrl = $v.imageUrl;
      _isFavourite = $v.isFavourite;
      _customName = $v.customName;
      _blocked = $v.blocked;
      _addedAt = $v.addedAt;
      _updatedAt = $v.updatedAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactsRecord;
  }

  @override
  void update(void Function(ContactsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContactsRecord build() => _build();

  _$ContactsRecord _build() {
    final _$result = _$v ??
        new _$ContactsRecord._(
            name: name,
            email: email,
            phoneNumber: phoneNumber,
            userRef: userRef,
            imageUrl: imageUrl,
            isFavourite: isFavourite,
            customName: customName,
            blocked: blocked,
            addedAt: addedAt,
            updatedAt: updatedAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

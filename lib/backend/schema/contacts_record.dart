import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'contacts_record.g.dart';

abstract class ContactsRecord
    implements Built<ContactsRecord, ContactsRecordBuilder> {
  static Serializer<ContactsRecord> get serializer =>
      _$contactsRecordSerializer;

  String? get name;

  String? get email;

  String? get phoneNumber;

  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  bool? get isFavourite;

  @BuiltValueField(wireName: 'custom_name')
  String? get customName;

  bool? get blocked;

  DateTime? get addedAt;

  DateTime? get updatedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ContactsRecordBuilder builder) => builder
    ..name = ''
    ..email = ''
    ..phoneNumber = ''
    ..imageUrl = ''
    ..isFavourite = false
    ..customName = ''
    ..blocked = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('contacts')
          : FirebaseFirestore.instance.collectionGroup('contacts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('contacts').doc();

  static Stream<ContactsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ContactsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ContactsRecord._();
  factory ContactsRecord([void Function(ContactsRecordBuilder) updates]) =
      _$ContactsRecord;

  static ContactsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createContactsRecordData({
  String? name,
  String? email,
  String? phoneNumber,
  DocumentReference? userRef,
  String? imageUrl,
  bool? isFavourite,
  String? customName,
  bool? blocked,
  DateTime? addedAt,
  DateTime? updatedAt,
}) {
  final firestoreData = serializers.toFirestore(
    ContactsRecord.serializer,
    ContactsRecord(
      (c) => c
        ..name = name
        ..email = email
        ..phoneNumber = phoneNumber
        ..userRef = userRef
        ..imageUrl = imageUrl
        ..isFavourite = isFavourite
        ..customName = customName
        ..blocked = blocked
        ..addedAt = addedAt
        ..updatedAt = updatedAt,
    ),
  );

  return firestoreData;
}

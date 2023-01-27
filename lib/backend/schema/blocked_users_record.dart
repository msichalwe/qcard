import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blocked_users_record.g.dart';

abstract class BlockedUsersRecord
    implements Built<BlockedUsersRecord, BlockedUsersRecordBuilder> {
  static Serializer<BlockedUsersRecord> get serializer =>
      _$blockedUsersRecordSerializer;

  DateTime? get blockedAt;

  DocumentReference? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(BlockedUsersRecordBuilder builder) => builder;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('blocked_users')
          : FirebaseFirestore.instance.collectionGroup('blocked_users');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('blocked_users').doc();

  static Stream<BlockedUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlockedUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlockedUsersRecord._();
  factory BlockedUsersRecord(
          [void Function(BlockedUsersRecordBuilder) updates]) =
      _$BlockedUsersRecord;

  static BlockedUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlockedUsersRecordData({
  DateTime? blockedAt,
  DocumentReference? user,
}) {
  final firestoreData = serializers.toFirestore(
    BlockedUsersRecord.serializer,
    BlockedUsersRecord(
      (b) => b
        ..blockedAt = blockedAt
        ..user = user,
    ),
  );

  return firestoreData;
}

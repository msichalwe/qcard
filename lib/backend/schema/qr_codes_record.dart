import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'qr_codes_record.g.dart';

abstract class QrCodesRecord
    implements Built<QrCodesRecord, QrCodesRecordBuilder> {
  static Serializer<QrCodesRecord> get serializer => _$qrCodesRecordSerializer;

  DocumentReference? get userID;

  String? get data;

  DateTime? get createdAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(QrCodesRecordBuilder builder) =>
      builder..data = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('qrCodes');

  static Stream<QrCodesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<QrCodesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  QrCodesRecord._();
  factory QrCodesRecord([void Function(QrCodesRecordBuilder) updates]) =
      _$QrCodesRecord;

  static QrCodesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createQrCodesRecordData({
  DocumentReference? userID,
  String? data,
  DateTime? createdAt,
}) {
  final firestoreData = serializers.toFirestore(
    QrCodesRecord.serializer,
    QrCodesRecord(
      (q) => q
        ..userID = userID
        ..data = data
        ..createdAt = createdAt,
    ),
  );

  return firestoreData;
}

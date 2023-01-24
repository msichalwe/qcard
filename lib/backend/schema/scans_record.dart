import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'scans_record.g.dart';

abstract class ScansRecord implements Built<ScansRecord, ScansRecordBuilder> {
  static Serializer<ScansRecord> get serializer => _$scansRecordSerializer;

  DocumentReference? get qrCodeId;

  DocumentReference? get scannedBy;

  DateTime? get scannedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ScansRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('scans');

  static Stream<ScansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ScansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ScansRecord._();
  factory ScansRecord([void Function(ScansRecordBuilder) updates]) =
      _$ScansRecord;

  static ScansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createScansRecordData({
  DocumentReference? qrCodeId,
  DocumentReference? scannedBy,
  DateTime? scannedAt,
}) {
  final firestoreData = serializers.toFirestore(
    ScansRecord.serializer,
    ScansRecord(
      (s) => s
        ..qrCodeId = qrCodeId
        ..scannedBy = scannedBy
        ..scannedAt = scannedAt,
    ),
  );

  return firestoreData;
}

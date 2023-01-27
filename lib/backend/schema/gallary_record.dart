import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gallary_record.g.dart';

abstract class GallaryRecord
    implements Built<GallaryRecord, GallaryRecordBuilder> {
  static Serializer<GallaryRecord> get serializer => _$gallaryRecordSerializer;

  DateTime? get dateUploaded;

  String? get imageUrl;

  String? get caption;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(GallaryRecordBuilder builder) => builder
    ..imageUrl = ''
    ..caption = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('gallary')
          : FirebaseFirestore.instance.collectionGroup('gallary');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('gallary').doc();

  static Stream<GallaryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GallaryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GallaryRecord._();
  factory GallaryRecord([void Function(GallaryRecordBuilder) updates]) =
      _$GallaryRecord;

  static GallaryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGallaryRecordData({
  DateTime? dateUploaded,
  String? imageUrl,
  String? caption,
}) {
  final firestoreData = serializers.toFirestore(
    GallaryRecord.serializer,
    GallaryRecord(
      (g) => g
        ..dateUploaded = dateUploaded
        ..imageUrl = imageUrl
        ..caption = caption,
    ),
  );

  return firestoreData;
}

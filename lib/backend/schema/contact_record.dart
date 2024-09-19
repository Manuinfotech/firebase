import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContactRecord extends FirestoreRecord {
  ContactRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _id = castToType<int>(snapshotData['id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contact');

  static Stream<ContactRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContactRecord.fromSnapshot(s));

  static Future<ContactRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContactRecord.fromSnapshot(s));

  static ContactRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContactRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContactRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContactRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContactRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContactRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContactRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContactRecordDocumentEquality implements Equality<ContactRecord> {
  const ContactRecordDocumentEquality();

  @override
  bool equals(ContactRecord? e1, ContactRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.id == e2?.id;
  }

  @override
  int hash(ContactRecord? e) => const ListEquality()
      .hash([e?.email, e?.displayName, e?.photoUrl, e?.phoneNumber, e?.id]);

  @override
  bool isValidKey(Object? o) => o is ContactRecord;
}

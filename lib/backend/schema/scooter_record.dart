import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScooterRecord extends FirestoreRecord {
  ScooterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "maxSpeed" field.
  double? _maxSpeed;
  double get maxSpeed => _maxSpeed ?? 0.0;
  bool hasMaxSpeed() => _maxSpeed != null;

  // "range" field.
  double? _range;
  double get range => _range ?? 0.0;
  bool hasRange() => _range != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  // "Ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  void _initializeFields() {
    _brand = snapshotData['brand'] as String?;
    _model = snapshotData['model'] as String?;
    _color = snapshotData['color'] as String?;
    _maxSpeed = castToType<double>(snapshotData['maxSpeed']);
    _range = castToType<double>(snapshotData['range']);
    _price = castToType<double>(snapshotData['price']);
    _disponible = snapshotData['disponible'] as bool?;
    _ubicacion = snapshotData['Ubicacion'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Scooter');

  static Stream<ScooterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScooterRecord.fromSnapshot(s));

  static Future<ScooterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScooterRecord.fromSnapshot(s));

  static ScooterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScooterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScooterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScooterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScooterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScooterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createScooterRecordData({
  String? brand,
  String? model,
  String? color,
  double? maxSpeed,
  double? range,
  double? price,
  bool? disponible,
  LatLng? ubicacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'brand': brand,
      'model': model,
      'color': color,
      'maxSpeed': maxSpeed,
      'range': range,
      'price': price,
      'disponible': disponible,
      'Ubicacion': ubicacion,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScooterRecordDocumentEquality implements Equality<ScooterRecord> {
  const ScooterRecordDocumentEquality();

  @override
  bool equals(ScooterRecord? e1, ScooterRecord? e2) {
    return e1?.brand == e2?.brand &&
        e1?.model == e2?.model &&
        e1?.color == e2?.color &&
        e1?.maxSpeed == e2?.maxSpeed &&
        e1?.range == e2?.range &&
        e1?.price == e2?.price &&
        e1?.disponible == e2?.disponible &&
        e1?.ubicacion == e2?.ubicacion;
  }

  @override
  int hash(ScooterRecord? e) => const ListEquality().hash([
        e?.brand,
        e?.model,
        e?.color,
        e?.maxSpeed,
        e?.range,
        e?.price,
        e?.disponible,
        e?.ubicacion
      ]);

  @override
  bool isValidKey(Object? o) => o is ScooterRecord;
}

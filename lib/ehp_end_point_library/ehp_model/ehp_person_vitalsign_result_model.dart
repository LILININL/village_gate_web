import 'dart:convert';

import 'package:barrier_gate_web/flutter_flow/flutter_flow_util.dart';


List<PersonVitalSignResult> personVitalSignResultFromJson(String str) => List<PersonVitalSignResult>.from(json.decode(str).map((x) => PersonVitalSignResult.fromJson(x)));

String personVitalSignResultToJson(List<PersonVitalSignResult> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

String personVitalSignResultToJson1(PersonVitalSignResult data) => json.encode(data.toJson());

class PersonVitalSignResult {
  String? id;
  String? systemName;
  String? hospitalCode;
  String? cid;
  String? eventId;
  int? personVtTypeId;
  DateTime? acquiredDatetime;
  String? deviceManufacturer;
  String? deviceModel;
  String? deviceSerialNo;
  String? valueText;
  double? valueDecimal;
  double? valueDecimal1;
  double? valueDecimal2;
  double? valueDecimal3;
  String? locationLatitude;
  String? locationLongitude;
  int? v;

  static PersonVitalSignResult newInstance() {
    return PersonVitalSignResult(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
  }

  PersonVitalSignResult(
    this.id,
    this.systemName,
    this.hospitalCode,
    this.cid,
    this.eventId,
    this.personVtTypeId,
    this.acquiredDatetime,
    this.deviceManufacturer,
    this.deviceModel,
    this.deviceSerialNo,
    this.valueText,
    this.valueDecimal,
    this.valueDecimal1,
    this.valueDecimal2,
    this.valueDecimal3,
    this.locationLatitude,
    this.locationLongitude,
    this.v,
  );

  factory PersonVitalSignResult.fromJson(Map<String, dynamic> json) => PersonVitalSignResult(
        json["_id"],
        json["system_name"],
        json["hospital_code"],
        json["cid"],
        json["event_id"],
        json["person_vt_type_id"] == null ? null : int.parse(json["person_vt_type_id"].toString()),
        json["acquired_datetime"] == null ? null : DateTime.parse(json["acquired_datetime"]),
        json["device_manufacturer"],
        json["device_model"],
        json["device_serial_no"],
        json["value_text"],
        json["value_decimal"] == null ? null : double.tryParse(json["value_decimal"].toString()),
        json["value_decimal1"] == null ? null : double.tryParse(json["value_decimal1"].toString()),
        json["value_decimal2"] == null ? null : double.tryParse(json["value_decimal2"].toString()),
        json["value_decimal3"] == null ? null : double.tryParse(json["value_decimal3"].toString()),
        json["location_latitude"],
        json["location_longitude"],
        json["__v"],
      );

  Map<String, dynamic> toJson() => {
        // "_id": id,
        "system_name": systemName,
        "hospital_code": hospitalCode,
        "cid": cid,
        "event_id": eventId,
        "person_vt_type_id": personVtTypeId,
        "acquired_datetime": acquiredDatetime == null ? null : DateFormat('yyyy-MM-ddTHH:mm:ss').format(acquiredDatetime!),
        "device_manufacturer": deviceManufacturer,
        "device_model": deviceModel,
        "device_serial_no": deviceSerialNo,
        "value_text": valueText,
        "value_decimal": valueDecimal == null ? 0.0 : valueDecimal,
        "value_decimal1": valueDecimal1 == null ? 0.0 : valueDecimal1,
        "value_decimal2": valueDecimal2 == null ? 0.0 : valueDecimal2,
        "value_decimal3": valueDecimal3 == null ? 0.0 : valueDecimal3,
        "location_latitude": locationLatitude,
        "location_longitude": locationLongitude,
        // "__v": v,
      };
}


// List<PersonVitalSignResult> personVitalSignResultFromJson(String str) => List<PersonVitalSignResult>.from(json.decode(str).map((x) => PersonVitalSignResult.fromJson(x)));

// String personVitalSignResultToJson(List<PersonVitalSignResult> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class PersonVitalSignResult {
//   String? id;
//   String? systemName;
//   String? hospitalCode;
//   String? cid;
//   String? eventId;
//   int? personVtTypeId;
//   DateTime? acquiredDatetime;
//   String? deviceManufacturer;
//   String? deviceModel;
//   String? deviceSerialNo;
//   String? valueText;
//   double? valueDecimal;
//   int? v;

//   PersonVitalSignResult({
//     this.id,
//     this.systemName,
//     this.hospitalCode,
//     this.cid,
//     this.eventId,
//     this.personVtTypeId,
//     this.acquiredDatetime,
//     this.deviceManufacturer,
//     this.deviceModel,
//     this.deviceSerialNo,
//     this.valueText,
//     this.valueDecimal,
//     this.v,
//   });

//   factory PersonVitalSignResult.fromJson(Map<String, dynamic> json) => PersonVitalSignResult(
//         id: json["_id"],
//         systemName: json["system_name"],
//         hospitalCode: json["hospital_code"],
//         cid: json["cid"],
//         eventId: json["event_id"],
//         personVtTypeId: json["person_vt_type_id"] == null ? null : int.parse(json["person_vt_type_id"].toString()),
//         acquiredDatetime: json["acquired_datetime"] == null ? null : DateTime.parse(json["acquired_datetime"]),
//         deviceManufacturer: json["device_manufacturer"],
//         deviceModel: json["device_model"],
//         deviceSerialNo: json["device_serial_no"],
//         valueText: json["value_text"],
//         valueDecimal: json["value_decimal"] == null ? null : double.tryParse(json["value_decimal"].toString()),
//         v: json["__v"] == null ? null : int.parse(json["__v"].toString()),
//       );

//   Map<String, dynamic> toJson() => {
//         "_id": id,
//         "system_name": systemName,
//         "hospital_code": hospitalCode,
//         "cid": cid,
//         "event_id": eventId,
//         "person_vt_type_id": personVtTypeId,
//         "acquired_datetime": acquiredDatetime == null ? null : DateFormat('yyyy-MM-dd HH:mm:ss').format(acquiredDatetime!),
//         "device_manufacturer": deviceManufacturer,
//         "device_model": deviceModel,
//         "device_serial_no": deviceSerialNo,
//         "value_text": valueText,
//         "value_decimal": valueDecimal,
//         "__v": v,
//       };
// }


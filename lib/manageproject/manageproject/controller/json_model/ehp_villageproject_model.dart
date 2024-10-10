import 'dart:convert';
import 'package:barrier_gate_web/ehp_end_point_library/ehp_api.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class Villageproject extends EHPData {
  int? villageproject_id;
  String? villageproject_display_name;
  String? villageproject_registered_name;
  String? villageproject_address;
  int? villageproject_type_id;
  int? villageproject_type_id_1;
  String? villageproject_type_name;

  // Constructor
  Villageproject(
    this.villageproject_id,
    this.villageproject_display_name,
    this.villageproject_registered_name,
    this.villageproject_address,
    this.villageproject_type_id,
    this.villageproject_type_id_1,
    this.villageproject_type_name,
  );

  // Override จากคลาสแม่ EHPData
  @override
  Villageproject fromJson(Map<String, dynamic> json) {
    return fromMap(json);
  }

  @override
  EHPData getInstance() {
    return Villageproject.newInstance();
  }

  static Villageproject newInstance() {
    return Villageproject(null, null, null, null, null, null, null);
  }

  @override
  Map<String, dynamic> toJson() => toMap();

  @override
  String getTableName() {
    return '[preset]/02BR_VillageProject';
  }

  @override
  String getKeyFieldName() {
    return 'table_name_id';
  }

  @override
  String getKeyFieldValue() {
    return villageproject_id.toString();
  }

  @override
  String getDefaultRestURIParam() {
    return '\$gendartclass=1';
  }

  @override
  List<String> getFieldNameForUpdate() {
    return [
      "villageproject_id",
      "villageproject_display_name",
      "villageproject_registered_name",
      "villageproject_address",
      "villageproject_type_id",
      "villageproject_type_id_1",
      "villageproject_type_name"
    ];
  }

  @override
  List<int> getFieldTypeForUpdate() {
    return [2, 6, 6, 6, 2, 2, 6];
  }

  // New fromMap method
  Villageproject fromMap(Map<String, dynamic> map) {
    return Villageproject(
      map['villageproject_id'],
      map['villageproject_display_name']?.toString(),
      map['villageproject_registered_name']?.toString(),
      map['villageproject_address']?.toString(),
      map['villageproject_type_id'],
      map['villageproject_type_id_1'],
      map['villageproject_type_name']?.toString(),
    );
  }

  // New toMap method
  Map<String, dynamic> toMap() {
    return {
      'villageproject_id': villageproject_id,
      'villageproject_display_name': villageproject_display_name,
      'villageproject_registered_name': villageproject_registered_name,
      'villageproject_address': villageproject_address,
      'villageproject_type_id': villageproject_type_id,
      'villageproject_type_id_1': villageproject_type_id_1,
      'villageproject_type_name': villageproject_type_name,
    };
  }

  // New decoder method from JSON string
  static Villageproject decode(String jsonString) {
    final Map<String, dynamic> decodedMap = jsonDecode(jsonString);
    return Villageproject(
      decodedMap['villageproject_id'],
      decodedMap['villageproject_display_name']?.toString(),
      decodedMap['villageproject_registered_name']?.toString(),
      decodedMap['villageproject_address']?.toString(),
      decodedMap['villageproject_type_id'],
      decodedMap['villageproject_type_id_1'],
      decodedMap['villageproject_type_name']?.toString(),
    );
  }

  // New encoder method to JSON string
  String encode() {
    final Map<String, dynamic> map = toMap();
    return jsonEncode(map);
  }
}

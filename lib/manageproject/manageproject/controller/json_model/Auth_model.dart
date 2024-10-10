import 'dart:convert';

import 'package:barrier_gate_web/ehp_end_point_library/ehp_api.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';


class Auth extends EHPData  {
   int? officer_id;
   String? officer_name;
   String? officer_group_name;
   String? officer_group_code;
   String? officer_task_name;
   String? officer_task_code;
   static Auth newInstance() {
   return Auth(null,null,null,null,null,null);
   }
   Auth(this.officer_id, this.officer_name, this.officer_group_name, this.officer_group_code, this.officer_task_name, this.officer_task_code);
   @override
   Auth fromJson(Map<String, dynamic> json) { 
   return Auth(
json['officer_id'],
json['officer_name']?.toString(),
json['officer_group_name']?.toString(),
json['officer_group_code']?.toString(),
json['officer_task_name']?.toString(),
json['officer_task_code']?.toString(),
   );
   }


   @override
   EHPData getInstance() { 
   return Auth.newInstance();
   }


   @override
   Map<String, dynamic> toJson() => {
       'officer_id' : officer_id,
       'officer_name' : officer_name,
       'officer_group_name' : officer_group_name,
       'officer_group_code' : officer_group_code,
       'officer_task_name' : officer_task_name,
       'officer_task_code' : officer_task_code,
    };
   @override
   String getTableName() {
     return '[preset]/03BR_VillageProject';
   }
   @override
   String getKeyFieldName() {
     return 'table_name_id';
   }
   @override
   String getKeyFieldValue() {
     return officer_id.toString();
   }
   @override
   String getDefaultRestURIParam() {
     return '\$gendartclass=1';
   }
   @override
   List<String> getFieldNameForUpdate() {
     return ["officer_id","officer_name","officer_group_name","officer_group_code","officer_task_name","officer_task_code"];
   }
   @override
   List<int> getFieldTypeForUpdate() {
     return [2,6,6,6,6,6];
   }
}

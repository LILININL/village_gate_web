import 'dart:convert';

import 'package:ehp_api/ehp_endpoint/ehp_api.dart';
import 'package:ehp_api/ehp_endpoint/ehp_endpoint.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

class Employee extends EHPData  {
   int? employee_id;
   String? employee_name;
   int? employee_position_id;
   int? salary;
   int? bank_id;
   String? bank_account_no;
   String? cid;
   String? profile;
   DateTime? birthdate;
   String? addr1;
   String? addr2;
   String? phone;
   int? employee_status_id;
   DateTime? employee_start_date;
   DateTime? employee_end_date;
   String? email;
   String? nick_name;
   String? job_description;
   String? job_evaluation;
   double? cost_per_day;
   int? department_id;
   int? employee_administration_type_id;
   int? head_employee_id;
   String? top_level_person;
   String? time_attendance_code;
   Duration? normal_in_time;
   Duration? normal_out_time;
   String? public_phone;
   int? rest_1_count;
   int? rest_2_count;
   int? rest_3_count;
   int? absent_count;
   int? delay_count;
   int? delay_minute_count;
   DateTime? last_wd_date;
   String? last_location_latitude;
   String? last_location_longitude;
   String? last_location;
   DateTime? last_location_update;
   String? todo_report_line_token;
   String? first_name;
   String? last_name;
   String? nationality;
   String? citizenship;
   String? marrystatus;
   String? religion;
   int? military_status_id;
   String? addrpart;
   String? moopart;
   String? addr_soi;
   String? road;
   String? amppart;
   String? tmbpart;
   String? chwpart;
   String? po_code;
   String? sc_addrpart;
   String? sc_moopart;
   String? sc_addr_soi;
   String? sc_road;
   String? sc_amppart;
   String? sc_tmbpart;
   String? sc_chwpart;
   String? sc_po_code;
   String? family_status;
   String? father_fname;
   String? father_lname;
   DateTime? father_birthdate;
   String? father_occupation;
   String? father_phone;
   String? father_workplace;
   int? father_life;
   String? mother_fname;
   String? mother_lname;
   DateTime? mother_birthdate;
   String? mother_occupation;
   String? mother_phone;
   String? mother_workplace;
   int? mother_life;
   int? siblings_count;
   int? employee_chief_id;
   int? employee_department_type_id;
   String? employee_line;
   int? affiliates_id;
   int? employee_level_id;
   String? sex;
   String? rfid;
   String? except_check_in;
   int? bms_group_company_id;
   String? employee_position_name;
   static Employee newInstance() {
   return Employee(null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
   }
   Employee(this.employee_id, this.employee_name, this.employee_position_id, this.salary, this.bank_id, this.bank_account_no, this.cid, this.profile, this.birthdate, this.addr1, this.addr2, this.phone, this.employee_status_id, this.employee_start_date, this.employee_end_date, this.email, this.nick_name, this.job_description, this.job_evaluation, this.cost_per_day, this.department_id, this.employee_administration_type_id, this.head_employee_id, this.top_level_person, this.time_attendance_code, this.normal_in_time, this.normal_out_time, this.public_phone, this.rest_1_count, this.rest_2_count, this.rest_3_count, this.absent_count, this.delay_count, this.delay_minute_count, this.last_wd_date, this.last_location_latitude, this.last_location_longitude, this.last_location, this.last_location_update, this.todo_report_line_token, this.first_name, this.last_name, this.nationality, this.citizenship, this.marrystatus, this.religion, this.military_status_id, this.addrpart, this.moopart, this.addr_soi, this.road, this.amppart, this.tmbpart, this.chwpart, this.po_code, this.sc_addrpart, this.sc_moopart, this.sc_addr_soi, this.sc_road, this.sc_amppart, this.sc_tmbpart, this.sc_chwpart, this.sc_po_code, this.family_status, this.father_fname, this.father_lname, this.father_birthdate, this.father_occupation, this.father_phone, this.father_workplace, this.father_life, this.mother_fname, this.mother_lname, this.mother_birthdate, this.mother_occupation, this.mother_phone, this.mother_workplace, this.mother_life, this.siblings_count, this.employee_chief_id, this.employee_department_type_id, this.employee_line, this.affiliates_id, this.employee_level_id, this.sex, this.rfid, this.except_check_in, this.bms_group_company_id, this.employee_position_name);
   @override
   Employee fromJson(Map<String, dynamic> json) { 
   return Employee(
json['employee_id'],
json['employee_name']?.toString(),
json['employee_position_id'],
json['salary'],
json['bank_id'],
json['bank_account_no']?.toString(),
json['cid']?.toString(),
json['profile']?.toString(),
json['birthdate'] == null ? null : parseDateFormat(json['birthdate'].toString()),
json['addr1']?.toString(),
json['addr2']?.toString(),
json['phone']?.toString(),
json['employee_status_id'],
json['employee_start_date'] == null ? null : parseDateFormat(json['employee_start_date'].toString()),
json['employee_end_date'] == null ? null : parseDateFormat(json['employee_end_date'].toString()),
json['email']?.toString(),
json['nick_name']?.toString(),
json['job_description']?.toString(),
json['job_evaluation']?.toString(),
json['cost_per_day'] == null ? null : double.tryParse(json['cost_per_day'].toString()),
json['department_id'],
json['employee_administration_type_id'],
json['head_employee_id'],
json['top_level_person']?.toString(),
json['time_attendance_code']?.toString(),
json['normal_in_time'] == null ? null : durationParse(json['normal_in_time'].toString()),
json['normal_out_time'] == null ? null : durationParse(json['normal_out_time'].toString()),
json['public_phone']?.toString(),
json['rest_1_count'],
json['rest_2_count'],
json['rest_3_count'],
json['absent_count'],
json['delay_count'],
json['delay_minute_count'],
json['last_wd_date'] == null ? null : parseDateFormat(json['last_wd_date'].toString()),
json['last_location_latitude']?.toString(),
json['last_location_longitude']?.toString(),
json['last_location']?.toString(),
json['last_location_update'] == null ? null : parseDateTimeFormat(json['last_location_update'].toString()),
json['todo_report_line_token']?.toString(),
json['first_name']?.toString(),
json['last_name']?.toString(),
json['nationality']?.toString(),
json['citizenship']?.toString(),
json['marrystatus']?.toString(),
json['religion']?.toString(),
json['military_status_id'],
json['addrpart']?.toString(),
json['moopart']?.toString(),
json['addr_soi']?.toString(),
json['road']?.toString(),
json['amppart']?.toString(),
json['tmbpart']?.toString(),
json['chwpart']?.toString(),
json['po_code']?.toString(),
json['sc_addrpart']?.toString(),
json['sc_moopart']?.toString(),
json['sc_addr_soi']?.toString(),
json['sc_road']?.toString(),
json['sc_amppart']?.toString(),
json['sc_tmbpart']?.toString(),
json['sc_chwpart']?.toString(),
json['sc_po_code']?.toString(),
json['family_status']?.toString(),
json['father_fname']?.toString(),
json['father_lname']?.toString(),
json['father_birthdate'] == null ? null : parseDateFormat(json['father_birthdate'].toString()),
json['father_occupation']?.toString(),
json['father_phone']?.toString(),
json['father_workplace']?.toString(),
json['father_life'],
json['mother_fname']?.toString(),
json['mother_lname']?.toString(),
json['mother_birthdate'] == null ? null : parseDateFormat(json['mother_birthdate'].toString()),
json['mother_occupation']?.toString(),
json['mother_phone']?.toString(),
json['mother_workplace']?.toString(),
json['mother_life'],
json['siblings_count'],
json['employee_chief_id'],
json['employee_department_type_id'],
json['employee_line']?.toString(),
json['affiliates_id'],
json['employee_level_id'],
json['sex']?.toString(),
json['rfid']?.toString(),
json['except_check_in']?.toString(),
json['bms_group_company_id'],
json['employee_position_name']?.toString(),
   );
   }


   @override
   EHPData getInstance() { 
   return Employee.newInstance();
   }


   @override
   Map<String, dynamic> toJson() => {
       'employee_id' : employee_id,
       'employee_name' : employee_name,
       'employee_position_id' : employee_position_id,
       'salary' : salary,
       'bank_id' : bank_id,
       'bank_account_no' : bank_account_no,
       'cid' : cid,
       'profile' : profile,
       'birthdate' : birthdate == null ? null : DateFormat('yyyy-MM-dd').format(birthdate!),
       'addr1' : addr1,
       'addr2' : addr2,
       'phone' : phone,
       'employee_status_id' : employee_status_id,
       'employee_start_date' : employee_start_date == null ? null : DateFormat('yyyy-MM-dd').format(employee_start_date!),
       'employee_end_date' : employee_end_date == null ? null : DateFormat('yyyy-MM-dd').format(employee_end_date!),
       'email' : email,
       'nick_name' : nick_name,
       'job_description' : job_description,
       'job_evaluation' : job_evaluation,
       'cost_per_day' : cost_per_day,
       'department_id' : department_id,
       'employee_administration_type_id' : employee_administration_type_id,
       'head_employee_id' : head_employee_id,
       'top_level_person' : top_level_person,
       'time_attendance_code' : time_attendance_code,
       'normal_in_time' : normal_in_time == null ? null : printDurationHHMMSS(normal_in_time!),
       'normal_out_time' : normal_out_time == null ? null : printDurationHHMMSS(normal_out_time!),
       'public_phone' : public_phone,
       'rest_1_count' : rest_1_count,
       'rest_2_count' : rest_2_count,
       'rest_3_count' : rest_3_count,
       'absent_count' : absent_count,
       'delay_count' : delay_count,
       'delay_minute_count' : delay_minute_count,
       'last_wd_date' : last_wd_date == null ? null : DateFormat('yyyy-MM-dd').format(last_wd_date!),
       'last_location_latitude' : last_location_latitude,
       'last_location_longitude' : last_location_longitude,
       'last_location' : last_location,
       'last_location_update' : last_location_update == null ? null : DateFormat('yyyy-MM-dd HH:mm:ss').format(last_location_update!),
       'todo_report_line_token' : todo_report_line_token,
       'first_name' : first_name,
       'last_name' : last_name,
       'nationality' : nationality,
       'citizenship' : citizenship,
       'marrystatus' : marrystatus,
       'religion' : religion,
       'military_status_id' : military_status_id,
       'addrpart' : addrpart,
       'moopart' : moopart,
       'addr_soi' : addr_soi,
       'road' : road,
       'amppart' : amppart,
       'tmbpart' : tmbpart,
       'chwpart' : chwpart,
       'po_code' : po_code,
       'sc_addrpart' : sc_addrpart,
       'sc_moopart' : sc_moopart,
       'sc_addr_soi' : sc_addr_soi,
       'sc_road' : sc_road,
       'sc_amppart' : sc_amppart,
       'sc_tmbpart' : sc_tmbpart,
       'sc_chwpart' : sc_chwpart,
       'sc_po_code' : sc_po_code,
       'family_status' : family_status,
       'father_fname' : father_fname,
       'father_lname' : father_lname,
       'father_birthdate' : father_birthdate == null ? null : DateFormat('yyyy-MM-dd').format(father_birthdate!),
       'father_occupation' : father_occupation,
       'father_phone' : father_phone,
       'father_workplace' : father_workplace,
       'father_life' : father_life,
       'mother_fname' : mother_fname,
       'mother_lname' : mother_lname,
       'mother_birthdate' : mother_birthdate == null ? null : DateFormat('yyyy-MM-dd').format(mother_birthdate!),
       'mother_occupation' : mother_occupation,
       'mother_phone' : mother_phone,
       'mother_workplace' : mother_workplace,
       'mother_life' : mother_life,
       'siblings_count' : siblings_count,
       'employee_chief_id' : employee_chief_id,
       'employee_department_type_id' : employee_department_type_id,
       'employee_line' : employee_line,
       'affiliates_id' : affiliates_id,
       'employee_level_id' : employee_level_id,
       'sex' : sex,
       'rfid' : rfid,
       'except_check_in' : except_check_in,
       'bms_group_company_id' : bms_group_company_id,
       'employee_position_name' : employee_position_name,
    };
   @override
   String getTableName() {
     return 'employee';
   }
   @override
   String getKeyFieldName() {
     return 'employee_id';
   }
   @override
   String getKeyFieldValue() {
     return employee_id.toString();
   }
   @override
   String getDefaultRestURIParam() {
     return 'employee_id=973&\$join[left]employee_position:employee_position_id:employee.employee_position_id&\$sfield=employee_position.employee_position_name';
   }
   @override
   List<String> getFieldNameForUpdate() {
     return ["employee_id","employee_name","employee_position_id","salary","bank_id","bank_account_no","cid","profile","birthdate","addr1","addr2","phone","employee_status_id","employee_start_date","employee_end_date","email","nick_name","job_description","job_evaluation","cost_per_day","department_id","employee_administration_type_id","head_employee_id","top_level_person","time_attendance_code","normal_in_time","normal_out_time","public_phone","rest_1_count","rest_2_count","rest_3_count","absent_count","delay_count","delay_minute_count","last_wd_date","last_location_latitude","last_location_longitude","last_location","last_location_update","todo_report_line_token","first_name","last_name","nationality","citizenship","marrystatus","religion","military_status_id","addrpart","moopart","addr_soi","road","amppart","tmbpart","chwpart","po_code","sc_addrpart","sc_moopart","sc_addr_soi","sc_road","sc_amppart","sc_tmbpart","sc_chwpart","sc_po_code","family_status","father_fname","father_lname","father_birthdate","father_occupation","father_phone","father_workplace","father_life","mother_fname","mother_lname","mother_birthdate","mother_occupation","mother_phone","mother_workplace","mother_life","siblings_count","employee_chief_id","employee_department_type_id","employee_line","affiliates_id","employee_level_id","sex","rfid","except_check_in","bms_group_company_id","employee_position_name"];
   }
   @override
   List<int> getFieldTypeForUpdate() {
     return [2,6,2,2,2,6,6,6,4,6,6,6,2,4,4,6,6,6,6,3,2,2,2,6,6,5,5,6,2,2,2,2,2,2,4,6,6,6,4,6,6,6,6,6,6,6,2,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,4,6,6,6,2,6,6,4,6,6,6,2,2,2,2,6,2,2,6,6,6,2,6];
   }
}

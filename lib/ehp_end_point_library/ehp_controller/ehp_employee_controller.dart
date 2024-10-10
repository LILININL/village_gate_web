
import 'package:ehp_api/ehp_endpoint/ehp_api.dart';
import 'package:ehp_api/ehp_endpoint/ehp_locator.dart';
import 'package:get/get.dart';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import '../ehp_model/ehp_employee_model.dart';

class EmployeeController {
  static Future<List<Employee>> getEmployees(String filter) async {
    final value = await serviceLocator<EHPApi>().getRestAPI(
        Employee.newInstance(),
        // '?village_name[like]%${filter}%&\$orderby=village_moo_int,village_moo'
        '?$filter&\$limit=100');

    return List<Employee>.from(value.map((e) => e as Employee));
  }
  static Future<Employee> getEmployeeFromID(int employeeID) async {

    final dataCount = await serviceLocator<EHPApi>().getRestAPIDataCount(
        Employee.newInstance(), 'employee_id=$employeeID&\$join[left]employee_position:employee_position_id:employee.employee_position_id&\$sfield=employee_position.employee_position_name');


    if ((dataCount ?? 0)>0) {
      return await serviceLocator<EHPApi>().getRestAPISingleFirstObject(
          Employee.newInstance(), '?employee_id=$employeeID&\$join[left]employee_position:employee_position_id:employee.employee_position_id&\$sfield=employee_position.employee_position_name') as Employee;
    } else {


      return Employee.newInstance()
      ..employee_id = employeeID;
    }


  }

  static Future<bool> saveEmployee(Employee employeeData) async {
    return await serviceLocator<EHPApi>()
        .postRestAPIData(employeeData, employeeData.getKeyFieldValue());
  }

  static Future<bool> deleteEmployee(Employee employeeData) async {
    return await serviceLocator<EHPApi>().deleteRestAPI(employeeData);
  }
}
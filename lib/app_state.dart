import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _BrandCar = [
    'LEXUS',
    'TOYOTA',
    'MINI',
    'ACURA',
    'HONDA',
    'SUBARU',
    'MAZDA',
    'PORSCHE',
    'BMW',
    'KIA',
    'HYUNDAI',
    'BUICK',
    'INFINITI',
    'TESLA',
    'RAM',
    'CADILLA',
    'NISSAN',
    'GENESI',
    'AUDI',
    'CHEVROLET'
  ];
  List<String> get BrandCar => _BrandCar;
  set BrandCar(List<String> value) {
    _BrandCar = value;
  }

  void addToBrandCar(String value) {
    BrandCar.add(value);
  }

  void removeFromBrandCar(String value) {
    BrandCar.remove(value);
  }

  void removeAtIndexFromBrandCar(int index) {
    BrandCar.removeAt(index);
  }

  void updateBrandCarAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    BrandCar[index] = updateFn(_BrandCar[index]);
  }

  void insertAtIndexInBrandCar(int index, String value) {
    BrandCar.insert(index, value);
  }

  List<String> _Province = [
    'กระบี่',
    'กรุงเทพมหานคร',
    'กาญจนบุรี',
    'กาฬสินธุ์',
    'กำแพงเพชร',
    'ขอนแก่น',
    'จันทบุรี',
    'ฉะเชิงเทรา',
    'ชลบุรี',
    'ชัยนาท',
    'ชัยภูมิ',
    'ชุมพร',
    'เชียงราย',
    'เชียงใหม่',
    'ตรัง',
    'ตราด',
    'ตาก',
    'นครนายก',
    'นครปฐม',
    'นครพนม',
    'นครราชสีมา',
    'นครศรีธรรมราช',
    'นครสวรรค์',
    'นนทบุรี',
    'นราธิวาส',
    'น่าน',
    'บึงกาฬ',
    'บุรีรัมย์',
    'ปทุมธานี',
    'ประจวบคีรีขันธ์',
    'ปราจีนบุรี',
    'ปัตตานี',
    'พระนครศรีอยุธยา',
    'พะเยา',
    'พังงา',
    'พัทลุง',
    'พิจิตร',
    'พิษณุโลก',
    'เพชรบุรี',
    'เพชรบูรณ์',
    'แพร่'
  ];
  List<String> get Province => _Province;
  set Province(List<String> value) {
    _Province = value;
  }

  void addToProvince(String value) {
    Province.add(value);
  }

  void removeFromProvince(String value) {
    Province.remove(value);
  }

  void removeAtIndexFromProvince(int index) {
    Province.removeAt(index);
  }

  void updateProvinceAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Province[index] = updateFn(_Province[index]);
  }

  void insertAtIndexInProvince(int index, String value) {
    Province.insert(index, value);
  }

  List<String> _Time = [
    '00:00',
    '01:00',
    '02:00',
    '03:00',
    '04:00',
    '05:00',
    '06:00',
    '07:00',
    '08:00',
    '09:00',
    '10:00',
    '11:00',
    '12:00',
    '13:00',
    '14:00',
    '15:00',
    '16:00',
    '17:00',
    '18:00',
    '19:00',
    '20:00',
    '21:00',
    '22:00',
    '23:00'
  ];
  List<String> get Time => _Time;
  set Time(List<String> value) {
    _Time = value;
  }

  void addToTime(String value) {
    Time.add(value);
  }

  void removeFromTime(String value) {
    Time.remove(value);
  }

  void removeAtIndexFromTime(int index) {
    Time.removeAt(index);
  }

  void updateTimeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Time[index] = updateFn(_Time[index]);
  }

  void insertAtIndexInTime(int index, String value) {
    Time.insert(index, value);
  }

  List<int> _carin = [
    0,
    5,
    3,
    4,
    0,
    16,
    3,
    1,
    5,
    0,
    0,
    5,
    0,
    8,
    0,
    1,
    2,
    0,
    1,
    5,
    7,
    0,
    9,
    2
  ];
  List<int> get carin => _carin;
  set carin(List<int> value) {
    _carin = value;
  }

  void addToCarin(int value) {
    carin.add(value);
  }

  void removeFromCarin(int value) {
    carin.remove(value);
  }

  void removeAtIndexFromCarin(int index) {
    carin.removeAt(index);
  }

  void updateCarinAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    carin[index] = updateFn(_carin[index]);
  }

  void insertAtIndexInCarin(int index, int value) {
    carin.insert(index, value);
  }

  List<int> _carout = [
    2,
    5,
    0,
    12,
    0,
    6,
    1,
    1,
    0,
    0,
    15,
    0,
    1,
    12,
    1,
    3,
    0,
    3,
    0,
    4,
    0,
    13,
    0,
    10
  ];
  List<int> get carout => _carout;
  set carout(List<int> value) {
    _carout = value;
  }

  void addToCarout(int value) {
    carout.add(value);
  }

  void removeFromCarout(int value) {
    carout.remove(value);
  }

  void removeAtIndexFromCarout(int index) {
    carout.removeAt(index);
  }

  void updateCaroutAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    carout[index] = updateFn(_carout[index]);
  }

  void insertAtIndexInCarout(int index, int value) {
    carout.insert(index, value);
  }
}

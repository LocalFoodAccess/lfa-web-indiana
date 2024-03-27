import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isFarmer = prefs.getBool('ff_isFarmer') ?? _isFarmer;
    });
    _safeInit(() {
      _avatar = prefs.getString('ff_avatar') ?? _avatar;
    });
    _safeInit(() {
      _displayName = prefs.getString('ff_displayName') ?? _displayName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isFarmer = false;
  bool get isFarmer => _isFarmer;
  set isFarmer(bool value) {
    _isFarmer = value;
    prefs.setBool('ff_isFarmer', value);
  }

  String _bolStatus = '';
  String get bolStatus => _bolStatus;
  set bolStatus(String value) {
    _bolStatus = value;
  }

  String _uploadedInvoice = '';
  String get uploadedInvoice => _uploadedInvoice;
  set uploadedInvoice(String value) {
    _uploadedInvoice = value;
  }

  String _signature = '';
  String get signature => _signature;
  set signature(String value) {
    _signature = value;
  }

  bool _isFinalRecipient = false;
  bool get isFinalRecipient => _isFinalRecipient;
  set isFinalRecipient(bool value) {
    _isFinalRecipient = value;
  }

  String _bolRecipient = '';
  String get bolRecipient => _bolRecipient;
  set bolRecipient(String value) {
    _bolRecipient = value;
  }

  String _bolSender = '';
  String get bolSender => _bolSender;
  set bolSender(String value) {
    _bolSender = value;
  }

  String _bolTransporter = '';
  String get bolTransporter => _bolTransporter;
  set bolTransporter(String value) {
    _bolTransporter = value;
  }

  List<String> _multipleRecipients = [];
  List<String> get multipleRecipients => _multipleRecipients;
  set multipleRecipients(List<String> value) {
    _multipleRecipients = value;
  }

  void addToMultipleRecipients(String value) {
    _multipleRecipients.add(value);
  }

  void removeFromMultipleRecipients(String value) {
    _multipleRecipients.remove(value);
  }

  void removeAtIndexFromMultipleRecipients(int index) {
    _multipleRecipients.removeAt(index);
  }

  void updateMultipleRecipientsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _multipleRecipients[index] = updateFn(_multipleRecipients[index]);
  }

  void insertAtIndexInMultipleRecipients(int index, String value) {
    _multipleRecipients.insert(index, value);
  }

  String _avatar = '';
  String get avatar => _avatar;
  set avatar(String value) {
    _avatar = value;
    prefs.setString('ff_avatar', value);
  }

  String _displayName = '';
  String get displayName => _displayName;
  set displayName(String value) {
    _displayName = value;
    prefs.setString('ff_displayName', value);
  }

  String _productPhoto = '';
  String get productPhoto => _productPhoto;
  set productPhoto(String value) {
    _productPhoto = value;
  }

  List<BolProductStruct> _bolProducts = [];
  List<BolProductStruct> get bolProducts => _bolProducts;
  set bolProducts(List<BolProductStruct> value) {
    _bolProducts = value;
  }

  void addToBolProducts(BolProductStruct value) {
    _bolProducts.add(value);
  }

  void removeFromBolProducts(BolProductStruct value) {
    _bolProducts.remove(value);
  }

  void removeAtIndexFromBolProducts(int index) {
    _bolProducts.removeAt(index);
  }

  void updateBolProductsAtIndex(
    int index,
    BolProductStruct Function(BolProductStruct) updateFn,
  ) {
    _bolProducts[index] = updateFn(_bolProducts[index]);
  }

  void insertAtIndexInBolProducts(int index, BolProductStruct value) {
    _bolProducts.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

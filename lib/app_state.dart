import 'package:flutter/material.dart';

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

  List<int> _getRole = [];
  List<int> get getRole => _getRole;
  set getRole(List<int> value) {
    _getRole = value;
  }

  void addToGetRole(int value) {
    getRole.add(value);
  }

  void removeFromGetRole(int value) {
    getRole.remove(value);
  }

  void removeAtIndexFromGetRole(int index) {
    getRole.removeAt(index);
  }

  void updateGetRoleAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    getRole[index] = updateFn(_getRole[index]);
  }

  void insertAtIndexInGetRole(int index, int value) {
    getRole.insert(index, value);
  }
}

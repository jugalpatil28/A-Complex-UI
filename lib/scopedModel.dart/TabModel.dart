import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class TabModel extends Model {
  bool _isDailyButtonPressed = true;
  bool _isAlternateButtonPressed = false;
  bool _isCustomizeButtonPressed = false;
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  int selectedTileIndex;
  bool _isTileSelected = false;

  final List<String> _weekDays = [
    'Monday',
    'Tuesday',
    'Wednessday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];

  List<String> get weekdays {
    return List.from(_weekDays);
  }

  void selectTile() {
    _isTileSelected = true;
  }

  bool get isTileSelected {
    return _isTileSelected;
  }

  int get selectedTile {
    return selectedTileIndex;
  }

  bool get dailyButtonStatus {
    return _isDailyButtonPressed;
  }

  bool get alternateButtonStatus {
    return _isAlternateButtonPressed;
  }

  bool get customizeButtonStatus {
    return _isCustomizeButtonPressed;
  }

  void toggleDailyButton() {
    if (!_isDailyButtonPressed) {
      _isDailyButtonPressed = !_isDailyButtonPressed;
      _isAlternateButtonPressed = false;
      _isCustomizeButtonPressed = false;
    }

    notifyListeners();
  }

  void toggleAlternateButton() {
    if (!_isAlternateButtonPressed) {
      _isAlternateButtonPressed = !_isAlternateButtonPressed;
      _isCustomizeButtonPressed = false;
      _isDailyButtonPressed = false;
    }
    notifyListeners();
  }

  void toggleCustomizeButton() {
    if (!_isCustomizeButtonPressed) {
      _isCustomizeButtonPressed = !_isCustomizeButtonPressed;
      _isAlternateButtonPressed = false;
      _isDailyButtonPressed = false;
    }
    notifyListeners();
  }

  Future<Null> selectStartDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != startDate) {
      startDate = picked;
    }
    notifyListeners();
  }

  Future<Null> selectEndDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: endDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != endDate) {
      endDate = picked;
    }
    notifyListeners();
  }
}

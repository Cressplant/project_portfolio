import 'package:flutter/material.dart';
import 'package:project_portfolio/views/business_logic/utils/enums.dart';

class UserPreferences extends ChangeNotifier {
  bool _darkMode = false;
  HandShakeStatus _handShakeStatus = HandShakeStatus.pending;

  bool get darkMode => _darkMode;
  HandShakeStatus get handShakeStatus => _handShakeStatus;

  void updateUserPreferences({required bool darkMode, required HandShakeStatus handShakeStatus}) {
    _darkMode = darkMode;
    _handShakeStatus = handShakeStatus;

    notifyListeners();
  }

  void updateHandshakeStatus({required HandShakeStatus handShakeStatus}) {
    _handShakeStatus = handShakeStatus;

    notifyListeners();
  }
}

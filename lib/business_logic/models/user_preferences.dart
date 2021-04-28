import 'package:flutter/material.dart';
import 'package:project_portfolio/business_logic/utils/enums.dart';


class UserPreferences extends ChangeNotifier {
  bool _darkMode = false;
  HandShakeStatus _handShakeStatus = HandShakeStatus.pending;
  int _handshakeAttempts = 1;

  bool get darkMode => _darkMode;
  HandShakeStatus get handShakeStatus => _handShakeStatus;
  int get handshakeAttempts => _handshakeAttempts;

  void updateDarkMode({required bool darkMode}) {
    _darkMode = darkMode;

    notifyListeners();
  }

  void updateHandshakeStatus({required HandShakeStatus handShakeStatus}) {
    _handShakeStatus = handShakeStatus;

    notifyListeners();
  }

  void updateHandshakeAttempts({required int handshakeAttempts}){
    _handshakeAttempts = handshakeAttempts;

    notifyListeners();
  }

}

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Authh with ChangeNotifier {
  Timer? _authTimer;
  String? _idToken, userId;
  DateTime? _expireDate;

  String? _tempidToken, tempuserId;
  DateTime? _tempexpireDate;

  void tempData() {
    _idToken = _tempidToken;
    userId = tempuserId;
    _expireDate = _tempexpireDate;
    notifyListeners();
  }

  bool get isAuthh {
    // return false atau true;
    return token != null;
  }

  String? get token {
    if (_idToken != null &&
        _expireDate!.isAfter(DateTime.now()) &&
        _expireDate != null) {
      return _idToken;
    } else {
      return null;
    }
  }

  Future<void> signup(email, password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCKMa1_O_BQiuQVYQWA4lNlI5aNGX2D9Eo");
    try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responseData = json.decode(response.body);
      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }

      _tempidToken = responseData["idToken"];
      tempuserId = responseData["localId"];
      _tempexpireDate = DateTime.now().add(
        Duration(
          seconds: int.parse(responseData["expiresIn"]),
        ),
      );
      _autoLogout();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> login(email, password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCKMa1_O_BQiuQVYQWA4lNlI5aNGX2D9Eo");
    try {
      var response = await http.post(
        url,
        body: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      var responseData = json.decode(response.body);
      if (responseData['error'] != null) {
        throw responseData['error']["message"];
      }
      _tempidToken = responseData["idToken"];
      tempuserId = responseData["localId"];
      _tempexpireDate = DateTime.now().add(
        Duration(
          seconds: int.parse(responseData["expiresIn"]),
        ),
      );
      _autoLogout();
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  void logout() {
    _idToken = null;
    userId = null;
    _expireDate = null;
    if (_authTimer != null) {
      _authTimer!.cancel();
      _authTimer = null;
    }

    notifyListeners();
  }

  void _autoLogout() {
    if (_authTimer != null) {
      _authTimer!.cancel();
    }
    final timeToExpire = _tempexpireDate!.difference(DateTime.now()).inSeconds;
    print(timeToExpire);
    _authTimer = Timer(Duration(seconds: timeToExpire), logout);
  }
}

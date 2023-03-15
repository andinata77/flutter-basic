import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Authh with ChangeNotifier {
  void signup(email, password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCKMa1_O_BQiuQVYQWA4lNlI5aNGX2D9Eo");
    var response = await http.post(
      url,
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
    );
    print(json.decode(response.body));
  }

  void login(email, password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCKMa1_O_BQiuQVYQWA4lNlI5aNGX2D9Eo");
    var response = await http.post(
      url,
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
    );
    print(json.decode(response.body));
  }
}

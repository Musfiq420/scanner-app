// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';

// class AuthService {
//   final String apiUrl = "http://127.0.0.1:8000/api/user_management/login/";

//   Future<bool> login(String email, String password) async {
//     final response = await http.post(
//       Uri.parse(apiUrl),
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({"email": email, "password": password}),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       final token = data['token'];

//       print(data.toString());
//       // Save token for future use
//       SharedPreferences prefs = await SharedPreferences.getInstance();
//       await prefs.setString('authToken', token);

//       return true;
//     } else {
//       print("Login failed: ${response.body}");
//       return false;
//     }
//   }

//   Future<void> logout() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.remove('authToken');
//   }
// }

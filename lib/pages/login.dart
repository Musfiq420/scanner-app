// import 'package:flutter/material.dart';
// import 'package:my_app/pages/dashboard.dart';
// import 'package:my_app/services/login.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key, required this.title});

//   final String title;

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final AuthService _authService = AuthService();

//   void _login() async {
//     final email = _emailController.text;
//     final password = _passwordController.text;

//     bool success = await _authService.login(email, password);
//     if (success) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => DashboardScreen()),
//       ); // Navigate to home page
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Invalid username or password")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Login")),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(labelText: "Email"),
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: const InputDecoration(labelText: "Password"),
//               obscureText: true,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _login,
//               child: Text("Login"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

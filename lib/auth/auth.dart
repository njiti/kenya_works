// import 'package:flutter/material.dart';
// import 'package:kenya_works/auth/login_or_register.dart';
//
// class AuthPage extends StatelessWidget {
//   const AuthPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot){
//           // user is logged in
//           if (snapshot.hasData) {
//             return const HomePage();
//           }
//           // user is NOT logged in
//           else {
//             return const LoginOrRegister();
//           }
//         },
//       ),
//     );
//   }
// }

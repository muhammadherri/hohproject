// import 'dart:ui';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:humanity/pages/profil.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   static Future<User?> loginUsingEmailPassword({
//     required String email,required String password, required BuildContext context})async{
//       FirebaseAuth auth = FirebaseAuth.instance;
//       User? user;
//       try{
//         UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
//         user = userCredential.user;
//       }on FirebaseAuthException catch(e){
//         if(e.code == "user not found"){
//           print("No user not found email");
//         }
//       }
//       return user;
//     }
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController _emailController = TextEditingController();
//     TextEditingController _passwordController = TextEditingController();
//     return Padding(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             "Title",
//             style: TextStyle(color: Colors.black),
//           ),
//           const Text(
//             "Title",
//             style: TextStyle(color: Colors.black),
//           ),
//           const SizedBox(
//             height: 44,
//           ),
//            TextField(
//             controller: _emailController,
//             keyboardType: TextInputType.emailAddress,
//             decoration: const InputDecoration(
//                 hintText: "User Email",
//                 prefixIcon: Icon(
//                   Icons.mail,
//                   color: Colors.black,
//                 )),
//           ),
//           const SizedBox(
//             height: 26,
//           ),
//            TextField(
//             controller: _passwordController,
//             obscureText: true,
//             decoration: const InputDecoration(
//                 hintText: "Password",
//                 prefixIcon: Icon(
//                   Icons.security,
//                   color: Colors.black,
//                 )),
//           ),
//           const SizedBox(
//             height: 12,
//           ),
//           const Text(
//             "Forgot Password",
//             style: TextStyle(color: Colors.blue),
//           ),
//           const SizedBox(
//             height: 88,
//           ),
//           Container(
//             width: double.infinity,
//             child: RawMaterialButton(
//               onPressed: () async{
//                 User? user = await loginUsingEmailPassword(email: _emailController.text, password: _passwordController.text, context: context);
//                 print(user);
//                 if(user !=null){
//                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> ProfileScreen()));
//                 }
//               },
//               child:const Text('Login',style: TextStyle(color: Colors.white),),
//               fillColor:const Color(0xFF0069FE),
//               elevation: 0,
//               padding:const EdgeInsets.symmetric(vertical: 20),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),

//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

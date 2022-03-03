// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// // ignore: unused_import
// import 'dart:io';

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   // ignore: unused_field
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final picUrl = "";
//   // ignore: unused_field
//   File? _image;
//   // ignore: unused_field
//   final TextEditingController _nameController = TextEditingController();
//   // ignore: unused_field
//   final TextEditingController _emailController = TextEditingController();
//   // ignore: unused_field
//   final TextEditingController _phoneController = TextEditingController();
//   // ignore: unused_field
//   final TextEditingController _passController = TextEditingController();

//   FirebaseAuth auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         padding: const EdgeInsets.only(top: 30),
//         color: Colors.grey[800],
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Image(
//               image: AssetImage("assets/images/logo.png"),
//               width: 200,
//               height: 100,
//             ),
//             Container(
//               height: 620,
//               padding: const EdgeInsets.all(33),
//               margin: const EdgeInsets.only(top: 10),
//               decoration: BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius: const BorderRadius.only(
//                       topRight: Radius.circular(122),
//                       bottomLeft: Radius.circular(122)),
//                   border: Border.all(color: Colors.orange, width: 11)),
//               child: Form(
//                   child: Column(
//                 children: [
//                   SizedBox(
//                     height: 30,
//                   ),
//                   const Text(
//                     "SIGN UP",
//                     style: TextStyle(
//                         fontSize: 33,
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 2,
//                         color: Colors.black),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   TextFormField(
//                     onChanged: (value){
//                       _nameController.text=value;
//                     },
//                     decoration: InputDecoration(
//                         hintText: "Enter Your Name",
//                         labelText: "Name",
//                         prefixIcon: Padding(
//                           padding: EdgeInsets.only(top: 4),
//                           child: Icon(
//                             Icons.person,
//                             color: Colors.white,
//                           ),
//                         ),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(22),
//                             borderSide: const BorderSide(
//                                 color: Colors.white, width: 2))),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   TextFormField(
//                     onChanged: (value){
//                       _emailController.text=value;
//                     },
//                     decoration: InputDecoration(
//                         hintText: "Enter Your Email",
//                         labelText: "Email",
//                         prefixIcon: Padding(
//                           padding: EdgeInsets.only(top: 4),
//                           child: Icon(
//                             Icons.person,
//                             color: Colors.white,
//                           ),
//                         ),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(22),
//                             borderSide: const BorderSide(
//                                 color: Colors.white, width: 2))),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                      onChanged: (value){
//                       _passController.text=value;
//                     },
//                     decoration: InputDecoration(
//                         hintText: "Enter Your Password",
//                         labelText: "Password",
//                         prefixIcon: Padding(
//                           padding: EdgeInsets.only(top: 4),
//                           child: Icon(
//                             Icons.password,
//                             color: Colors.white,
//                           ),
//                         ),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(22),
//                             borderSide: const BorderSide(
//                                 color: Colors.white, width: 2))),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   TextFormField(
//                      onChanged: (value){
//                       _phoneController.text=value;
//                     },
//                     decoration: InputDecoration(
//                         hintText: "Enter Your Phone",
//                         labelText: "Phone",
//                         prefixIcon: Padding(
//                           padding: EdgeInsets.only(top: 4),
//                           child: Icon(
//                             Icons.phone_android,
//                             color: Colors.white,
//                           ),
//                         ),
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(22),
//                             borderSide: const BorderSide(
//                                 color: Colors.white, width: 2))),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   SizedBox(
//                     height: 70,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: const Text(
//                         "Register",
//                         style:
//                             TextStyle(color: Colors.orange, letterSpacing: 2),
//                       ),
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.white),
//                           shape:
//                               MaterialStateProperty.all<RoundedRectangleBorder>(
//                                   RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(22)))),
//                     ),
//                   ),
//                 ],
//               )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

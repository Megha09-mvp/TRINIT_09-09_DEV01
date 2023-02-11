// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tri_nit/list.dart';
import 'package:tri_nit/user_profile.dart';
import 'package:tri_nit/user_register_page.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    loginUser();
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // Navigator.of(context, rootNavigator: true)
                      //     .pushNamed('userRegister');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 10.0,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       GestureDetector(
                //         onTap: () {
                //           //TODO: send email to reset password
                //         },
                //         child: Container(
                //           padding: EdgeInsets.all(10.0),
                //           decoration: BoxDecoration(
                //             border: Border.all(),
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           child: Text(
                //             'Forgot Password',
                //             style: TextStyle(
                //               fontSize: 20.0,
                //             ),
                //           ),
                //         ),
                //       ),
                //       GestureDetector(
                //         onTap: () {
                //           setState(() {
                //             // Navigator.of(context, rootNavigator: true)
                //             //     .pushNamed('userRegister');
                //             Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                //
                //           });
                //         },
                //         child: Container(
                //           padding: EdgeInsets.all(10.0),
                //           decoration: BoxDecoration(
                //             border: Border.all(),
                //             borderRadius: BorderRadius.circular(10.0),
                //           ),
                //           child: Text(
                //             'Register',
                //             style: TextStyle(
                //               fontSize: 20.0,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future loginUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      auth
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((signedInUser) => {
                print("Success"),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profilePage())),
              });
    } catch (e) {
      print(e);
    }
  }
}

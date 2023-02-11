// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tri_nit/list.dart';
import 'package:tri_nit/user_login.dart';

class RegisterPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Register',
        ),
      ),
      body: InputDetails(),
    );
  }
}

class InputDetails extends StatefulWidget {


  @override
  State<InputDetails> createState() => _InputDetailsState();
}

class _InputDetailsState extends State<InputDetails> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController ngoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
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
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: confirmController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: cityController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'City',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: ngoController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Type of ngo interested in:',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(
            //     vertical: 5.0,
            //     horizontal: 5.0,
            //   ),
            //   constraints: BoxConstraints(
            //     minWidth: double.infinity,
            //   ),
            //   decoration: BoxDecoration(
            //     border: Border.all(),
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Location',
            //         style: TextStyle(fontSize: 20.0),
            //       ),
            //       // Row(
            //       //   children: [
            //       //     RadioWidget(radioText: 'Pune', radioValue: 1),
            //       //     RadioWidget(radioText: 'Mumbai', radioValue: 2),
            //       //   ],
            //       // ),
            //       // Row(
            //       //   children: [
            //       //     RadioWidget(radioText: 'Hyderabad', radioValue: 3),
            //       //   ],
            //       // ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10.0,
            // ),
            // Container(
            //   padding: EdgeInsets.symmetric(
            //     vertical: 5.0,
            //     horizontal: 5.0,
            //   ),
            //   constraints: BoxConstraints(
            //     minWidth: double.infinity,
            //   ),
            //   decoration: BoxDecoration(
            //     border: Border.all(),
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'NGO Type',
            //         style: TextStyle(fontSize: 20.0),
            //       ),
            //       Row(
            //         children: [
            //           RadioWidget(radioText: 'Charitable', radioValue: 1),
            //           RadioWidget(radioText: 'Service', radioValue: 2),
            //         ],
            //       ),
            //       Row(
            //         children: [
            //           RadioWidget(radioText: 'Empowering', radioValue: 3),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(onPressed: () {
              regiterUser();
            }, child: Text(
                'Register'
            )),
          ],
        ),
      ),
    );
  }

  Future regiterUser() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = await FirebaseAuth.instance.currentUser;

    try {
      await auth.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text).then((
          signedInUser) =>
      {
        FirebaseFirestore.instance.collection("Users").doc(signedInUser.user?.uid).set({
          'name': nameController.text,
          'email': emailController.text,
          'password': passwordController.text,
          'confirmPassword': confirmController.text,
          'city': cityController.text,
          'typeOfNgo': ngoController.text,
        }).then((signedInUser) =>
        {
          print("success"),
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>UserLogin()))
        })
      });
    } catch (e) {
      print(e);
    }
  }
}
// class RadioWidget extends StatelessWidget {
//   RadioWidget({required this.radioText, required this.radioValue});
//   String radioText;
//   int radioValue;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       child: Row(
//         children: [
//           Radio(
//             value: radioValue,
//             groupValue: 1,
//             onChanged: (value) {},
//           ),
//           Text(
//             radioText,
//             style: TextStyle(
//               fontSize: 18.0,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

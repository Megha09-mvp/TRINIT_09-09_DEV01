import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tri_nit/list.dart';
import 'package:tri_nit/suggestion.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  int pageIndex =0;
  final pages=[
    const ngo(),
    const algo(),
    Pro(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('nri'),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
        Container buildMyNavBar(BuildContext context) {
      return Container(

        height: 60,
        decoration: BoxDecoration(

          // color: Theme.of(context).primaryColor,
          color: Colors.deepOrange,
          borderRadius: const BorderRadius.only(

            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                Icons.home_filled,
                color: Colors.white,
                size: 35,
              )
                  : const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                Icons.work_rounded,
                color: Colors.white,
                size: 35,
              )
                  : const Icon(
                Icons.work_outline_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                Icons.widgets_rounded,
                color: Colors.white,
                size: 35,
              )
                  : const Icon(
                Icons.widgets_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),

          ],
        ),
      );
    }
}

class Pro extends StatefulWidget {

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  String name=" ";
  String email=" ";
  String city=" ";
  String ngo=" ";
  void getData()async{
    User? user = await FirebaseAuth.instance.currentUser;
    var vari = await FirebaseFirestore.instance.collection("Users").doc().get();
    setState(() {
      name= vari.data()!['name'];
      email=vari.data()!['email'];
      city= vari.data()!['city'];
      ngo = vari.data()!['ngo'];
    });
  }

  void initState(){
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:<Widget>[
        Card(
          elevation: 50,
          shadowColor: Colors.deepOrange,
          color: Colors.orangeAccent,
          child: SizedBox(
            //width: 300,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                   Text(
                    email,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ), //Textstyle
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 100,




                  ) //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
        SizedBox(height: 50.0),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              )),child: Text(city,
          textAlign: TextAlign.justify,
        ),),
        SizedBox(height: 10.0,),

        SafeArea(
          child: Container(
            width: double.infinity,
            height: 150.0,
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),child: Text(ngo,
            textAlign: TextAlign.justify,
          ),) ,
        ),


      ],
    );
  }
}


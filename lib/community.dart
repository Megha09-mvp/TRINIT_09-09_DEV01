// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class comm extends StatefulWidget {
  const comm({Key? key}) : super(key: key);

  @override
  State<comm> createState() => _commState();
}

class _commState extends State<comm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        title: Text('Community'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 50,
            shadowColor: Colors.deepOrange,
            color: Colors.orangeAccent,
            child: SizedBox(
              width: 370,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //CircleAvatar
                    const SizedBox(
                      height: 30,
                    ), //SizedBox
                    GestureDetector(
                      onTap: () {
                        setState(() async {
                          const String url = 'https://discord.gg/nQwRAsEf';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          }
                        });
                      },
                      child: Text(
                        'Charitable Organization ',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ), //Textstyle
                      ),
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    //SizedBox
                    SizedBox(
                      width: 100,
                    )
                    //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
          SizedBox(height: 25.0),
          Card(
            elevation: 50,
            shadowColor: Colors.deepOrange,
            color: Colors.orangeAccent,
            child: SizedBox(
              width: 370,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //CircleAvatar
                    const SizedBox(
                      height: 30,
                    ), //SizedBox
                    GestureDetector(
                      onTap: () {
                        setState(() async {
                          const String url = 'https://discord.gg/4z2TQCyW';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          }
                        });
                      },
                      child: Text(
                        'Health-Care Organization ',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ), //Textstyle
                      ),
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    //SizedBox
                    SizedBox(
                      width: 100,
                    )
                    //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
          SizedBox(height: 25.0),
          Card(
            elevation: 50,
            shadowColor: Colors.deepOrange,
            color: Colors.orangeAccent,
            child: SizedBox(
              width: 370,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //CircleAvatar
                    const SizedBox(
                      height: 30,
                    ), //SizedBox
                    GestureDetector(
                      onTap: () {
                        setState(() async {
                          const String url = 'https://discord.gg/ZCab8uFf';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          }
                        });
                      },
                      child: Text(
                        ' Women Empowerment ',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ), //Textstyle
                      ),
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    //SizedBox
                    SizedBox(
                      width: 100,
                    )
                    //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
          SizedBox(height: 25.0),
          Card(
            elevation: 50,
            shadowColor: Colors.deepOrange,
            color: Colors.orangeAccent,
            child: SizedBox(
              width: 370,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    //CircleAvatar
                    const SizedBox(
                      height: 30,
                    ), //SizedBox
                    GestureDetector(
                      onTap: () {
                        setState(() async {
                          const String url = 'https://discord.gg/H6z8fwMV';
                          if (await canLaunchUrlString(url)) {
                            await launchUrlString(url);
                          }
                        });
                      },
                      child: Text(
                        'Educational Organization ',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ), //Textstyle
                      ),
                    ), //Text
                    const SizedBox(
                      height: 10,
                    ), //SizedBox
                    //SizedBox
                    SizedBox(
                      width: 100,
                    )
                    //SizedBox
                  ],
                ), //Column
              ), //Padding
            ), //SizedBox
          ),
          SizedBox(height: 25.0),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tri_nit/user_login.dart';
import 'package:tri_nit/user_profile.dart';
import 'community.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('TRI'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size.fromHeight(150), // NEW
                // NEW
              ),
              onPressed: () {},
              child: const Text(
                'Non-Profit Orgaanization',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: SizedBox(
              width: 400.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size.fromHeight(150), // NEW
                  // NEW
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserLogin()));
                },
                child: const Text(
                  'User',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: SizedBox(
              width: 400.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size.fromHeight(150), // NEW
                  // NEW
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => comm()));
                },
                child: const Text(
                  'Join the community',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: SizedBox(
              width: 400.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size.fromHeight(150), // NEW
                  // NEW
                ),
                onPressed: () {},
                child: const Text(
                  'Latest updates',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

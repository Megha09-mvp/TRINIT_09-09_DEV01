import 'package:flutter/material.dart';

class algo extends StatefulWidget {
  const algo({Key? key}) : super(key: key);

  @override
  State<algo> createState() => _algoState();
}

class _algoState extends State<algo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: TextField(
        
        keyboardType: TextInputType.multiline,
        maxLines: null,
        style: TextStyle(
          
          fontSize: 18.0,
        ),
        decoration: InputDecoration(
          hintText: 'Search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

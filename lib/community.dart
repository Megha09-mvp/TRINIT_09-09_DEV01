import 'package:flutter/material.dart';

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
                    Text(
                      'Charitable Organization ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ), //Textstyle
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
                    Text(
                      'Health-Care Organization ',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w900
                        ,
                      ), //Textstyle
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
                    Text(
                      ' Women Empowerment ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ), //Textstyle
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
                    Text(
                      'Educational Organization ',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ), //Textstyle
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

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0,
        leading: Container(
          width: 20,
          height:20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Colors.grey,
            )
        ),
        actions: [


        ],
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text("home"),
          ],
        ),
      ),
    );
  }
}
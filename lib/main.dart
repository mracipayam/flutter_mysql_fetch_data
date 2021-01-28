import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List data = [];

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    final response = await http.get('http://192.168.2.11/fetch_data.php');


      setState(() {
        data = json.decode(response.body);
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(data[index]['name']),
          )),
    );
  }
}
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red, 
        primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Forecast',
              style: TextStyle(color: Colors.white)
              ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _buildBody(),
      ),
    );
  }
}


Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        const TextField(
            decoration: (InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter City name',
                hintStyle: TextStyle(color: Colors.white),
                icon: Icon(Icons.search, color: Colors.white)))
        ),
        _cityDetail(),
        
      ],
    ),
  );
}

Column _cityDetail () {
  return Column(
    children: const[
      Text(
        'Tyumen Oblast, RU',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0)
          ),
      Text(
        'Monday, Apr 11, 2022',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0)
          )
    ],
  );
}
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
        _temperatureDetail(),
        _extraWeatherDetail(),
       Text('7-day weather forecast'.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 20.0)),
       BodyListView()
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
          fontSize: 35.0)
          ),
      Text(
        'Monday, Apr 11, 2022',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0)
          )
    ],
  );
}

Row _temperatureDetail(){
  return Row(
     mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(Icons.wb_sunny, color: Colors.white, size: 80,),
      const SizedBox(width: 18.0),
      Column(
        children: [
          const Text(
            '14°F',
            style: TextStyle(
            color: Colors.white,
            fontSize: 40.0)),
          Text(
            'Light snow'.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0),)
        ],
      )
    ],
  );
}

Row _extraWeatherDetail() {
  return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: const[
          Icon(Icons.ac_unit, color: Colors.white,size: 30 ), 
          Text('5', style: TextStyle(color: Colors.white, fontSize: 20.0)),
          Text('km/hr', style: TextStyle(color: Colors.white))
          ],
      ),
      Column(
        children: const[
          Icon(Icons.ac_unit, color: Colors.white,size: 30 ), 
          Text('3', style: TextStyle(color: Colors.white, fontSize: 20.0)),
          Text('%', style: TextStyle(color: Colors.white))
          ],
      ),
       Column(
        children: const[
          Icon(Icons.ac_unit, color: Colors.white,size: 30 ), 
          Text('20', style: TextStyle(color: Colors.white, fontSize: 20.0)),
          Text('%', style: TextStyle(color: Colors.white))
          ],
      ),
    ],
  );
}

class  BodyListView extends StatelessWidget {
  const  BodyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return ListView(
    padding: const EdgeInsets.all(8),
    scrollDirection: Axis.horizontal,
    itemExtent: 350,
    children:  [
      Container(
        width: 300,
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Monday',style: TextStyle(color: Colors.white, fontSize: 25.0)),
            Row(children: const [
               Text('6°F', style: TextStyle(color: Colors.white, fontSize: 35.0)),
              Icon(Icons.ac_unit,color: Colors.white,size: 35)
            ],)
          ],
        ),
      )
    ],
  );
}
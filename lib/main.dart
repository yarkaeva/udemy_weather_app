import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.red, primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather Forecast',
            style: TextStyle(color: Colors.white),
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
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter City name',
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.search, color: Colors.white),
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _cityDetail(),
            _temperatureDetail(),
            _extraWeatherDetail(),
            _bottomDetail()
          ],
        ),
      )
    ],
  );
}

Widget _cityDetail() {
  return Column(
    children: const [
      Text(
        'Tyumen Oblast, RU',
        style: TextStyle(color: Colors.white, fontSize: 35.0),
      ),
      Text(
        'Monday, Apr 11, 2022',
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    ],
  );
}

Widget _temperatureDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 80,
      ),
      const SizedBox(width: 18.0),
      Column(
        children: [
          const Text(
            '14°F',
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
          Text(
            'Light snow'.toUpperCase(),
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          )
        ],
      )
    ],
  );
}

Widget _extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: const [
          Icon(Icons.ac_unit, color: Colors.white, size: 30),
          Text(
            '5',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          Text(
            'km/hr',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: const [
          Icon(Icons.ac_unit, color: Colors.white, size: 30),
          Text(
            '3',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Column(
        children: const [
          Icon(Icons.ac_unit, color: Colors.white, size: 30),
          Text(
            '20',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          Text(
            '%',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ],
  );
}

Widget _bottomDetail() {
  return Column(
    children: [
      Text(
        '7-day weather forecast'.toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 18.0),
      ),
      const BodyListView()
    ],
  );
}

class BodyListView extends StatelessWidget {
  const BodyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }
}

Widget _myListView() {
  return Container(
    height: 140,
    padding: const EdgeInsets.all(16),
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 160,
          color: Colors.red[200],
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Monday',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '6°F',
                    style: TextStyle(color: Colors.white, fontSize: 35.0),
                  ),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 160,
          color: Colors.red[200],
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Tuesday',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '13°F',
                    style: TextStyle(color: Colors.white, fontSize: 35.0),
                  ),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 160,
          color: Colors.red[200],
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Wednesday',
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    '11°F',
                    style: TextStyle(color: Colors.white, fontSize: 35.0),
                  ),
                  Icon(Icons.wb_sunny, color: Colors.white, size: 35),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

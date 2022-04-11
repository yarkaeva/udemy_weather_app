import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather', style: TextStyle(color: Colors.black87)),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          iconTheme: const IconThemeData(color: Colors.black54),
          actions: [
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
          ],
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
      children: [
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _weatherDescription(),
                const Divider(),
                _temperature(),
                const Divider(),
                _temperatureForecast(),
                const Divider(),
                _footerRaitings()
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(
    image: NetworkImage(
        'https://androidbaza.ru/wp-content/uploads/2021/01/yandeks-1.jpg'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text(
        'Tuesday - May 22',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel est. Aenean malesuada dui id auctor tempus. In finibus leo at augue laoreet, vel sollicitudin mauris pulvinar.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
           Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      const SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text(
                '15° Clear',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          Row(
            children: const [
              Text(
                'Tyumenskay oblast, Tyumen',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 20}°C',
          style: const TextStyle(fontSize: 13.0),
        ),
        avatar: Icon(Icons.wb_cloudy, color: Colors.blue.shade300),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _footerRaitings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      Icon(Icons.star, size: 15.0, color: Colors.yellow[600]),
      const Icon(Icons.star, size: 15.0, color: Colors.black),
      const Icon(Icons.star, size: 15.0, color: Colors.black),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:  [
     const Text(
        'Info with openweatherap.org',
        style: TextStyle(
          fontSize: 15.0, 

        ),
      ),
      stars,
    ],
  );
}
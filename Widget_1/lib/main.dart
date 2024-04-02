import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              size: 40, color: Color.fromARGB(255, 49, 162, 236)),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.download,
                size: 40, color: Color.fromARGB(255, 8, 127, 202)),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: CarCard(),
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'assets/car.jpg',
            fit: BoxFit.cover,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '1975 Porsche 911 Carrera',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.thumb_up,
                        size: 30, color: Color.fromARGB(255, 37, 38, 39)),
                    SizedBox(width: 8),
                    Text("0"),
                    SizedBox(width: 20.0),
                    Icon(Icons.comment, size: 30, color: Colors.black),
                    SizedBox(width: 8.0),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      width: 130.0,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward,
                          size: 30, color: Color.fromARGB(255, 12, 152, 203)),
                      onPressed: () {},
                    ),
                    Text("Share")
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
            height: 20, // Adjust the height of the divider
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Essential Informations',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 60.0),
                Text(
                  '1 of 3 done',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Year, Make, Model, VIN',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Year: 1975',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  'Make: Porsche',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  'Model: 911 Carrera',
                  style: TextStyle(fontSize: 16.0),
                ),
                Text(
                  'VIN: 911877298702',
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 1,
            height: 10,
          ),
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.verified, size: 40, color: Colors.green),
                      onPressed: () {},
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 150.0),
                    IconButton(
                      icon: Icon(Icons.edit, size: 30, color: Colors.blue),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.verified, size: 40, color: Colors.green),
                      onPressed: () {},
                    ),
                    Text(
                      'Photos',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 170.0),
                    IconButton(
                      icon: Icon(Icons.edit, size: 30, color: Colors.blue),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

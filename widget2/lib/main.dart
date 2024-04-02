import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('cart')),
        ),
        body: Container(
          color: Colors.white10,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.cabin, size: 40.0),
                    Column(
                      children: [
                        Text("Shopping Cart"),
                        Text("verify you quantity and click checkout")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/car.jpg'),
                        Column(
                          children: [Text("calas"), Text("15.00")],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_circle_outline_outlined),
                          onPressed: () {},
                          iconSize: 20.0,
                          color: Colors.black,
                        ),
                        Text("1.0"),
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline_outlined),
                          onPressed: () {},
                          iconSize: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/car.jpg'),
                        Column(
                          children: [
                            Text("Angle Hair"),
                            Text("salmon,mozerella"),
                            Text("22.99")
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_circle_outline_outlined),
                          onPressed: () {},
                          iconSize: 20.0,
                          color: Colors.black,
                        ),
                        Text("2.0"),
                        IconButton(
                          icon: Icon(Icons.remove_circle_outline_outlined),
                          onPressed: () {},
                          iconSize: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("Subtotal"), Text("60.98")],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [Text("Tax(10%)"), Text("6.10")],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Checkout"),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

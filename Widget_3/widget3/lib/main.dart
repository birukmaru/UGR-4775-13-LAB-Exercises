import 'package:flutter/material.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: const Color.fromARGB(255, 215, 195, 216),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 184, 165, 165),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 170,
                child: const Column(children: [
                  Icon(Icons.male, size: 100),
                  Text("MALE"),
                ]),
              ),
              Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 184, 165, 165),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 170,
                  child: const Column(children: [
                    Icon(Icons.male, size: 100),
                    Text("FEMALE"),
                  ])),
            ]),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 184, 165, 165),
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: Column(children: [
                const Text(
                  "HEIGHT",
                  style: TextStyle(fontSize: 30),
                ),
                const Text(
                  "176cm",
                  style: TextStyle(fontSize: 50),
                ),
                Slider(
                  value: 0.5,
                  onChanged: (double value) {},
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 184, 165, 165),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  width: 170,
                  child: Column(children: [
                    const Text(
                      "WEIGHT",
                      style: TextStyle(fontSize: 30),
                    ),
                    const Text(
                      "60",
                      style: TextStyle(fontSize: 50),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                        FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.remove),
                        ),
                      ],
                    ),
                  ]),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 184, 165, 165),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  width: 170,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(fontSize: 30),
                        ),
                        const Text(
                          "60",
                          style: TextStyle(fontSize: 50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FloatingActionButton(
                              onPressed: () {},
                              child: const Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              child: const Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("CALCULATE"),
            ),
          ],
        ),
      ),
    );
  }
}

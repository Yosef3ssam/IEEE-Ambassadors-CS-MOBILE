import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 5',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task 5'), 
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 254, 255),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: EdgeInsets.all(10),
                width: 1000,
                child: Text(
                  'Yosef Mohamed Essam',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 254, 255),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: 1000,
                child: Text(
                  "Life is like riding a bike, To keep your balance, you must keep moving",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey[700], fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 254, 255),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: 1000,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                      ],
                    ),
                    Text('0 Reviews.'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 254, 255),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.star, color: Colors.green),
                        SizedBox(height: 10),
                        Text(
                          'PREP',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[700]),
                        ),
                        SizedBox(height: 10),
                        Text('25 MIN',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.alarm, color: Colors.green),
                        SizedBox(height: 10),
                        Text(
                          'COOK:',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[700]),
                        ),
                        SizedBox(height: 10),
                        Text('1 HOUR',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant, color: Colors.green),
                        SizedBox(height: 10),
                        Text(
                          'FEEDS',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[700]),
                        ),
                        SizedBox(height: 10),
                        Text('4-5',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

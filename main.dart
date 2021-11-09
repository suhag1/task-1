import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color colorValue = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
       leading: Icon(Icons.menu),
        title: Text('suhag'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 300,
              width: 300,
              color:colorValue,
              child: Center(
                child: Container(
                  color: Colors.white,
                  width: 150,
                  height: 150,
                  child: Icon(
                   Icons.shopping_bag
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
             setState(() {
               colorValue = Colors.red;
               print('red clicked');
             });
            }, child: Text('Red')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    colorValue = Colors.green;
                    print('red clicked');
                  });
                }, child: Text('Green')),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    colorValue = Colors.blue;
                    print('red clicked');
                  });
                }, child: Text('Blue')),
          ],
        ),
      ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "My First Flutter App",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.blueAccent,
            ),
            body: Builder(
                builder: (context) => Padding(
                    padding: EdgeInsets.all(20),
                    child: Center(
                        child: Column(children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Hello Im JUDY !',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[800]),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Nice to meet you',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.network(
                            'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                            height: 350,
                          )),
                      Padding(
                          padding: EdgeInsets.all(15),
                          child: ElevatedButton(
                            child: Text('Click to See more'),
                            onPressed: () => contactUs(context),
                          )),
                    ]))))));
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('My Personal Info'),
          content: Text('email : judyb0626@gmail.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }
}

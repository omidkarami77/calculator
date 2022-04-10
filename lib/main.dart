import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}


class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Text("omid karami")),
      ),

    );
  }
}


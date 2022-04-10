import 'package:calculator/constant/constants.dart';
import 'package:calculator/widget/widgetRow.dart';
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
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 100,
                  color: backgroundGreyDark,
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  color: backgroundGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      getRow(
                        text1: 'ac',
                        text2: 'ce',
                        text3: '%',
                        text4: '/',
                      ),
                      getRow(
                        text1: '7',
                        text2: '8',
                        text3: '9',
                        text4: '*',
                      ),
                      getRow(
                        text1: '4',
                        text2: '5',
                        text3: '6',
                        text4: '-',
                      ),
                      getRow(
                        text1: '1',
                        text2: '2',
                        text3: '3',
                        text4: '+',
                      ),
                      getRow(
                        text1: '00',
                        text2: '0',
                        text3: '.',
                        text4: '=',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

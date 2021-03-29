import 'package:colors_test_assignment/app_utils.dart';
import 'package:colors_test_assignment/constants.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _backgroundColor = AppUtils.getRandomColor();
        });
      },
      child: Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          title: Text(
            'Colors generator',
            style: kAppBarTextStyle,
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Hey there',
                    style: kHomeTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Tap anywhere on the screen',
                style: kTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
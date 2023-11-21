import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/bithdate.dart';
import 'package:vertical_picker/vertical_picker.dart';

import 'components/numberPicker.dart';

class MensaturationDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Add the navigation logic here
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Animated Moving Image
          Lottie.asset(
            'assets/animations/run.json',
            height: 300.0,
            repeat: true,
            reverse: true,
            animate: true,
          ),
          SizedBox(height: 14.0),
          // Text Widget
          Center(
            child: Text(
              '      How many days on average    \n        '
              ' is your menstruation?',
              style: TextStyle(fontSize: 20.0),
            ),
          ),

          Center(
            child: NumberPicker(),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, left: 105),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Text(
                "I DON'T REMEMBER",
                style: TextStyle(fontSize: 14.2, color: Colors.deepPurple),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DateOfBith()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      3.0), // Set the desired border radius
                ),
              ),
              child: Text('NEXT'),
            ),
          ),
          // Date Selector
        ],
      ),
    );
  }
}

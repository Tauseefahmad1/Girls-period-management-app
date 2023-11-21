import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/mensaturation_average.dart';
import 'package:vertical_picker/vertical_picker.dart';

import 'components/numberPicker.dart';

class CyclingAverageDay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            'assets/animations/cycling.json',
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
              '          is your cycle?',
              style: TextStyle(fontSize: 20.0),
            ),
          ),

          SizedBox(
            height: 10,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MensaturationDays()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
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

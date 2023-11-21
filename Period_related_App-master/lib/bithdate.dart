import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/Mensaturation_periods.dart';
import 'package:vertical_picker/vertical_picker.dart';

import 'components/numberPicker.dart';

class DateOfBith extends StatelessWidget {
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
            'assets/animations/birthdate.json',
            height: 300.0,
            repeat: true,
            reverse: true,
            animate: true,
          ),
          SizedBox(height: 24.0),
          // Text Widget
          Center(
            child: Text(
              ' Set your birth date',
              style: TextStyle(fontSize: 20.0),
            ),
          ),

          SizedBox(
            height: 6,
          ),

          Center(
            child: DobPicker(),
          ),
          Spacer(),

          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MensaturationPeriods()));
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

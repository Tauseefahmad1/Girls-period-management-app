import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/code%20screens.dart';
import 'package:period_related_app/mensaturation_average.dart';
import 'package:vertical_picker/vertical_picker.dart';

import 'components/numberPicker.dart';

class SetCode extends StatelessWidget {
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
            'assets/animations/setcode.json',
            height: 300.0,
            repeat: true,
            reverse: true,
            animate: true,
          ),
          SizedBox(height: 14.0),
          // Text Widget
          Center(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  '    Set an access code ?',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  '  After enabling thus option, the application can \n'
                  '      only be opened with a code or fingerprint  ',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
          )),

          SizedBox(
            height: 10,
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PinCodeScreen()));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                  side: BorderSide(
                      color: Colors.deepPurple,
                      width: 2.0), // Set the desired border radius
                ),
              ),
              child: Text('Set Code'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PinCodeScreen()));
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

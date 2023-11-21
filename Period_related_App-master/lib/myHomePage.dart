import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/Mensaturation_periods.dart';
import 'package:period_related_app/bithdate.dart';
import 'package:period_related_app/circular%20progress%20indicator.dart';
import 'package:period_related_app/code%20screens.dart';
import 'package:period_related_app/graph.dart';
import 'package:period_related_app/goals_screens.dart';
import 'package:period_related_app/cycling_avergage_day.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? selectedDate;
  FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 80.0, left: 16, right: 16, bottom: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Lottie.asset(
                'assets/animations/cal.json',
                height: 200.0,
                repeat: true,
                reverse: true,
                animate: true,
              ),
            ),
            // Text Widget
            Center(
              child: Text(
                '       Choose the day \n your last period started',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 50.0),
            // Date Selector
            GestureDetector(
              onTap: () {
                if (_focusNode.hasFocus) {
                  _focusNode.unfocus();
                }
              },
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Select Date',
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.deepPurple, width: 2.0)),
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                  border: OutlineInputBorder(),
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      selectedDate = pickedDate;
                    });
                  }
                },
                controller: TextEditingController(
                  text: selectedDate != null
                      ? DateFormat('MMM dd, yyyy').format(selectedDate!)
                      : '',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CyclingAverageDay()));
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
          ],
        ),
      ),
    );
  }
}

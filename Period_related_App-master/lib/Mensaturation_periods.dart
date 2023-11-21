import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/cycling_avergage_day.dart';
import 'package:period_related_app/goals_screens.dart';
import 'package:period_related_app/setCode.dart';

class MensaturationPeriods extends StatefulWidget {
  @override
  _MensaturationPeriodsState createState() => _MensaturationPeriodsState();
}

class _MensaturationPeriodsState extends State<MensaturationPeriods> {
  String dropdownValue = '1 day before';
  TimeOfDay? selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 190.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "LATER",
                  style: TextStyle(fontSize: 15, color: Colors.deepPurple),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated Moving Image
            Lottie.asset(
              'assets/animations/rem.json',
              height: 250.0,
              repeat: true,
              reverse: true,
              animate: true,
            ),
            SizedBox(height: 16.0),
            // Text Widget
            Center(
              child: Text(
                '    How many days on average    \n        '
                '     before your cycle \n '
                '       do you want a reminder?',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            // Row with Days Picker and Time Picker
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Days Picker
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Days',
                          hintText: 'Select days',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.deepPurpleAccent, width: 2.0),
                          ),
                        ),
                        value: dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: [
                          '1 day before',
                          '2 days before',
                          '3 days before',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  // Time Picker
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        _selectTime(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Time',
                            hintText: 'Select time',
                            suffixIcon: Icon(Icons.access_time),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.deepPurpleAccent, width: 2.0),
                            ),
                          ),
                          readOnly: true,
                          onTap: () {
                            _selectTime(context);
                          },
                          controller: TextEditingController(
                            text: selectedTime != null
                                ? '${selectedTime!.format(context)}'
                                : '',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GoalsScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
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

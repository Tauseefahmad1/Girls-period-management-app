import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/goals_screens.dart';
import 'package:period_related_app/graph.dart';

class PinCodeScreen extends StatefulWidget {
  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<PinCodeScreen> {
  String pinCode = '';
  bool isEyesHidden = true;
  String codeLabel = 'Create an access code';

  void _updatePinCode(String digit) {
    setState(() {
      if (pinCode.length < 4) {
        pinCode += digit;
      }
      if (pinCode.length == 4) {
        // Check if pinCode is correct
        if (pinCode == '1234') {
          // Correct pinCode, do something
          setState(() {
            codeLabel = 'Retype Code';
          });
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GraphPage()));
        } else {
          // Incorrect pinCode, clear the entered digits
          pinCode = '';
          setState(() {
            codeLabel = 'Incorrect Code';
          });
        }
      }
    });
  }

  void _deleteDigit() {
    setState(() {
      if (pinCode.isNotEmpty) {
        pinCode = pinCode.substring(0, pinCode.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Lottie.asset(
              'assets/animations/accessCode.json',
              height: 250.0,
              repeat: true,
              reverse: true,
              animate: true,
            ),
            SizedBox(height: 40),
            Text(
              codeLabel,
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 20),
            Container(
              width: 160,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: i < pinCode.length ? Colors.black : Colors.grey,
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 10),
            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              padding: EdgeInsets.all(12),
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              childAspectRatio: 2.3,
              children: [
                for (int i = 1; i <= 9; i++)
                  GestureDetector(
                    onTap: () => _updatePinCode(i.toString()),
                    child: Container(
                      child: Center(
                        child: Text(
                          i.toString(),
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                GestureDetector(
                  onTap: () => _updatePinCode('0'),
                  child: Container(
                    child: Center(
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _deleteDigit,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: Icon(
                      Icons.backspace,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/circular%20progress%20indicator.dart';
import 'package:period_related_app/graph.dart';

class GoalsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 107,
        title: Padding(
          padding: const EdgeInsets.only(top: 50.0, bottom: 30),
          child: RichText(
            text: TextSpan(
              text: '        Choose a goal\n',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: 'so that we can configure\n  ',
                  style: TextStyle(fontSize: 22),
                ),
                TextSpan(
                  text: '      Clover for you',
                  style: TextStyle(fontSize: 22),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 190,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              margin: EdgeInsets.all(13.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              'Keep track of your cycle',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 6.0),
                            child: Text(
                              'Track symptoms\n'
                              'and moods',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CircularIndicator()));
                            },
                            child: Text(
                              'CHOOSE',
                              style: TextStyle(fontSize: 11),
                            ),
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(114, 10)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Lottie.asset(
                      'assets/animations/track.json',
                      height: 180.0,
                      repeat: true,
                      reverse: true,
                      animate: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              margin: EdgeInsets.all(13.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Lottie.asset(
                      'assets/animations/doctor.json',
                      height: 120.0,
                      repeat: true,
                      reverse: true,
                      animate: true,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 40,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Monitor your health',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.black87,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 6.0, top: 6.0),
                              child: Text(
                                'Track your well-being\n'
                                'throughout your cycle',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Add your button action here
                              },
                              child: Text(
                                'CHOOSE',
                                style: TextStyle(fontSize: 11),
                              ),
                              style: ButtonStyle(
                                fixedSize:
                                    MaterialStateProperty.all(Size(114, 10)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 190,
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              margin: EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 6.0),
                            child: Text(
                              'Get pregnant',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 6.0),
                            child: Text(
                              'Track symptoms\n'
                              'Track favorable days for conception',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Add your button action here
                            },
                            child: Text(
                              'CHOOSE',
                              style: TextStyle(fontSize: 11),
                            ),
                            style: ButtonStyle(
                              fixedSize:
                                  MaterialStateProperty.all(Size(114, 10)),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Lottie.asset(
                      'assets/animations/pregannt.json',
                      height: 100.0,
                      repeat: true,
                      reverse: true,
                      animate: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

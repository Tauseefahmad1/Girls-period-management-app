import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:period_related_app/components/mycontainer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class GraphPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double chartHeight = screenHeight * 0.3;
    double chartWidth = screenWidth * 0.8;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(100), // half of the width and height
                child: Image.asset(
                  'assets/icons/alarm.png',
                  height: 20,
                  width: 23,
                  color: Colors.purple[340],
                ),
              ),
            ),
            Text(
              'Weight monitor',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Icon(
              Icons.cancel,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
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
                                'Current Weight',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 6.0),
                                  child: Text(
                                    '56 Kg',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 6.0),
                                  child: Text(
                                    '+4Kg',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Lottie.asset(
                        'assets/animations/wei.json',
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
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0, bottom: 16.0),
                  child: Text(
                    "Measurement per cycle",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, bottom: 16.0, top: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Aug1 -  ',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Sep1',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: InkWell(
                                onTap: () {
                                  // Button 1 onPressed function
                                },
                                child: Icon(
                                  Icons.arrow_back_ios_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(3.0)),
                              child: InkWell(
                                onTap: () {
                                  // Button 2 onPressed function
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            /*Container(
              height: chartHeight,
              width: chartWidth,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  labelPlacement: LabelPlacement.onTicks,
                  labelStyle: TextStyle(fontSize: 12),
                ),
                primaryYAxis: NumericAxis(
                  labelStyle: TextStyle(fontSize: 12),
                  minimum: 52.5,
                  maximum: 55.5,
                  interval: 0.5,
                ),
                series: [
                  ColumnSeries(
                    dataSource: [
                      Entity(x: '8/4', y: 5.0),
                      Entity(x: '8/11', y: 0.0),
                      Entity(x: '8/18', y: 3.0),
                      Entity(x: '8/25', y: 0.0),
                    ],
                    xValueMapper: (Entity entity, _) => entity.x,
                    yValueMapper: (Entity entity, _) => entity.y,
                    pointColorMapper: (Entity entity, _) {
                      if (entity.x == '8/4') {
                        return Colors.red;
                      } else if (entity.x == '8/11') {
                        return Colors.blue;
                      } else {
                        return Colors.transparent;
                      }
                    },
                  ),
                ],
              ),
            )*/
            Container(
              height: chartHeight,
              width: chartWidth,
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(
                  labelPlacement: LabelPlacement.onTicks,
                  labelStyle: TextStyle(fontSize: 12),
                ),
                primaryYAxis: NumericAxis(
                  labelStyle: TextStyle(fontSize: 12),
                  minimum: 52.5,
                  maximum: 55.5,
                  interval: 0.5,
                ),
                series: [
                  ColumnSeries(
                    dataSource: [
                      Entity(x: '8/4', y: 53.2),
                      Entity(x: '8/11', y: 0),
                      Entity(x: '8/18', y: 53),
                      Entity(x: '8/25', y: 0),
                    ],
                    xValueMapper: (Entity entity, _) => entity.x,
                    yValueMapper: (Entity entity, _) => entity.y,
                    pointColorMapper: (Entity entity, _) {
                      if (entity.x == '8/4') {
                        return Colors.red;
                      } else if (entity.x == '8/18') {
                        return Colors.blueAccent;
                      } else {
                        return Colors.transparent;
                      }
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 110.0,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Periods',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Ovulation',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Text(
                  "History",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            MyContainer(),
          ],
        ),
      ),
    );
  }
}

class Entity {
  final String x;
  final double y;

  Entity({required this.x, required this.y});
}

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class FloorScreen extends StatelessWidget {
  const FloorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: SfRadialGauge(
              axes: <RadialAxis>[
                RadialAxis(
                  minimum: 0,
                  maximum: 100,
                  startAngle: 270,
                  endAngle: 270,
                  radiusFactor: 0.7,
                  showLabels: false,
                  showTicks: false,
                  axisLineStyle: const AxisLineStyle(
                    thickness: 0.06,
                    color: Color.fromARGB(255, 249, 244, 244),
                    thicknessUnit: GaugeSizeUnit.factor,
                  ),
                  pointers: const <GaugePointer>[
                    RangePointer(
                      value: 100,
                      width: 0.06,
                      sizeUnit: GaugeSizeUnit.factor,
                      cornerStyle: CornerStyle.startCurve,
                      gradient: SweepGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 8, 2, 173),
                          Color.fromARGB(255, 172, 7, 238)
                        ],
                        stops: <double>[0.25, 0.75],
                      ),
                    ),
                    MarkerPointer(
                      value: 100,
                      markerType: MarkerType.circle,
                      color: Color(0xFF4F0B79),
                    )
                  ],
                  annotations: const <GaugeAnnotation>[
                    GaugeAnnotation(
                      positionFactor: 0.98,
                      angle: 90,
                      widget: Column(
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'Get the Ultimate\nPrediction',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            'Just answer 3\n questions and we\'ll\n have you sorted.',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Number of Floors',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 8, 8, 8),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 450,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter the number of floors',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            height: 44.0,
            width: 350.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 8, 2, 173),
                  Color.fromARGB(255, 172, 7, 238)
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(22)),
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ResultScreen');
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent),
              child: const Text(
                'Predict Now',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

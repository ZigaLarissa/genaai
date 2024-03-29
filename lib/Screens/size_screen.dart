import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class SizeScreen extends StatefulWidget {
  const SizeScreen({super.key});

  @override
  State<SizeScreen> createState() => _SizeScreenState();
}

class _SizeScreenState extends State<SizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
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
                          value: 35,
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
                          value: 35,
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
                    'House Size',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter the size of your house',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                      ),
                    ),
                  ),
                  // Add this line
                ],
              ),
              // SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
              const Spacer(),
              Container(
                height: 44.0,
                width: 250.0,
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
                    Navigator.pushNamed(context, '/BedroomScreen');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'Next',
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
        ),
      ),
    );
  }
}

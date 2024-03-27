import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CityScreen extends StatelessWidget {
  const CityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 70),
            const CircleAvatar(
              radius: 120, // Image radius
              backgroundImage: AssetImage('images/city.jpg'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Choose Your City',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4F0B79),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 44.0,
              width: 200.0,
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
                  Navigator.pushNamed(context, '/SizeScreen');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: const Text(
                  'Kigali',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),
            const Text(
              'Coming Soon...',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 3, 3, 3),
              ),
            ),
            Column(
              children: [
                Opacity(
                  opacity: 0.6,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: 400,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30, // Image radius
                              backgroundImage: AssetImage('images/london.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'London',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30, // Image radius
                              backgroundImage: AssetImage('images/newyork.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'New York',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30, // Image radius
                              backgroundImage:
                                  AssetImage('images/istanbul.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Istanbul',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 30, // Image radius
                              backgroundImage:
                                  AssetImage('images/manchester.jpg'),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Manchester',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 400,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              // color: Colors.red,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 30, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse1.jpg'),
                      ),
                      CircleAvatar(
                        radius: 20, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse2.jpg'),
                      ),
                      CircleAvatar(
                        radius: 40, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse3.jpg'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 40, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse4.jpg'),
                      ),
                      CircleAvatar(
                        radius: 90, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse5.jpg'),
                      ),
                      CircleAvatar(
                        radius: 34, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse6.jpg'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 50, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse7.jpg'),
                      ),
                      CircleAvatar(
                        radius: 28, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse8.jpg'),
                      ),
                      CircleAvatar(
                        radius: 68, // Image radius
                        backgroundImage: AssetImage('../images/Ellipse9.jpg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to\n GenaAi!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4F0B79),
                height: 1.2,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Discover the right price\n for your house, invest wisely.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 3, 3, 3),
              ),
            ),
            const SizedBox(height: 50),
            Container(
              height: 44.0,
              width: 400.0,
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
                  Navigator.pushNamed(context, '/CityScreen');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String profileImage =
      'https://picsum.photos/id/86/300';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isWide = width >= 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: isWide ? 180 : 150,
                        height: isWide ? 180 : 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurple.shade100,
                        ),
                      ),
                      CircleAvatar(
                        radius: isWide ? 85 : 70,
                        backgroundImage: const NetworkImage(profileImage),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'Taran P',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'BTECH AIML STUDENT',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    'A student who enjoys learning, building, and exploring technology.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 30),

                  isWide
                      ? Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/about',
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(14),
                                  child: Text('About Me'),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/projects',
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(14),
                                  child: Text('Projects'),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/about',
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(14),
                                  child: Text('About Me'),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/projects',
                                  );
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(14),
                                  child: Text('Projects'),
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

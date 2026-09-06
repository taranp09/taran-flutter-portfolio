import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'I am Taran P, a B.Tech AIML student at CR RAO. '
                      'I enjoy learning new technologies and creating simple '
                      'applications through practical projects. '
                      'I am interested in Artificial Intelligence, Machine Learning, '
                      'and Flutter application development.',
                      style: TextStyle(
                        fontSize: 17,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 14,
                    ),
                    child: Text('Back to Home'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

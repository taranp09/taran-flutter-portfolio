import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  final List<Map<String, String>> projects = const [
    {
      'name': 'Weather App',
      'description':
          'A simple Flutter application that displays weather information in a clean and easy-to-use interface.',
    },
    {
      'name': 'E-commerce UI',
      'description':
          'A mobile shopping interface with product cards, categories, and a simple user-friendly layout.',
    },
    {
      'name': 'Music Player',
      'description':
          'A music player interface designed to display songs, playlists, and basic playback controls.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'My Projects',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ...projects.map(
                (project) => Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project['name']!,
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          project['description']!,
                          style: const TextStyle(
                            fontSize: 16,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
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
            ],
          ),
        ),
      ),
    );
  }
}

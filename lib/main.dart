import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<List<String>> repos = [
  [
    'Assignment 1',
    'https://github.com/AlexanderCecile/w24_app_dev_assignment_1'
  ],
  [
    'Assignment 2',
    'https://github.com/AlexanderCecile/w24_app_dev_assignment_2'
  ],
  ['Lab 2', 'https://github.com/AlexanderCecile/app_dev_2_lab_2'],
  ['Final Exam', 'https://github.com/AlexanderCecile/w24_app_dev_2_exam_2']
];

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Dev 2 Final Project',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code on Github'),
      ),
      body: ListView.builder(
          itemCount: repos.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(repos[index][0]),
              subtitle: InkWell(
                child: Text(repos[index][1]),
                onTap: () {
                  launchUrl(Uri.parse(repos[index][1]));
                },
              ),
            );
          }),
    );
  }
}

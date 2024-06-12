import 'package:flutter/material.dart';

class VisualizationPage extends StatelessWidget {
  const VisualizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visualization Page'),
      ),
      body: const Center(
        child: Text('Visualize your data here.'),
      ),
    );
  }
}

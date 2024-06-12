import 'package:flutter/material.dart';
import 'upload_page.dart';
import 'visualization_page.dart';
import 'analysis_page.dart';
import 'analysis_log_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late Widget _selectedPage;

  @override
  void initState() {
    super.initState();
    // Default page when the app starts
    _selectedPage = const UploadPage();
  }

  void _selectPage(Widget page) {
    setState(() {
      _selectedPage = page;
    });
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Pages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Upload Page'),
              onTap: () {
                _selectPage(const UploadPage());
              },
            ),
            ListTile(
              title: const Text('Visualization Page'),
              onTap: () {
                _selectPage(const VisualizationPage());
              },
            ),
            ListTile(
              title: const Text('Analysis Page'),
              onTap: () {
                _selectPage(const AnalysisPage());
              },
            ),
            ListTile(
              title: const Text('Analysis Log Page'),
              onTap: () {
                _selectPage(const AnalysisLogPage());
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _selectedPage,
      ),
    );
  }
}

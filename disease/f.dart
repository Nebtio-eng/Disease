import 'package:flutter/material.dart';

void main() {
  runApp(DiseasePredictionApp());
}

class DiseasePredictionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disease Prediction',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DiseasePredictionScreen(),
    );
  }
}

class DiseasePredictionScreen extends StatefulWidget {
  @override
  _DiseasePredictionScreenState createState() => _DiseasePredictionScreenState();
}

class _DiseasePredictionScreenState extends State<DiseasePredictionScreen> {
  TextEditingController symptomsController = TextEditingController();
  String predictionResult = '';

  void predictDisease(String symptoms) {
    // Implement your prediction logic here, similar to the Python function predictDisease

    // Example prediction logic placeholder
    if (symptoms.isNotEmpty) {
      setState(() {
        predictionResult = 'Sample Disease'; // Replace with actual prediction result
      });
    } else {
      setState(() {
        predictionResult = 'Error: Please enter symptoms.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disease Prediction'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Enter Symptoms (comma separated):',
              style: TextStyle(fontSize: 18.0),
            ),
            TextField(
              controller: symptomsController,
              decoration: InputDecoration(
                hintText: 'e.g., fever, headache',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                predictDisease(symptomsController.text);
              },
              child: Text('Predict Disease'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Prediction Results:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              predictionResult,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

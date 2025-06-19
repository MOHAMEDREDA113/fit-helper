import 'package:flutter/material.dart';
import 'WorkoutCalendarScreen.dart';
import 'WorkoutProgressScreen.dart';
import 'ReminderSetupScreen.dart';

void main() {
  runApp(FitHelperApp());
}

class FitHelperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fit Helper',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fit Helper')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => WorkoutCalendarScreen()));
            },
            child: Text('عرض التقويم والتمارين'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => WorkoutProgressScreen()));
            },
            child: Text('تتبع التقدم'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => ReminderSetupScreen()));
            },
            child: Text('إعداد المنبهات'),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:noti_emp_app/Views/Employee_View.dart';
import 'package:noti_emp_app/Views/Notifications_View.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: NotificationView(),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noti_emp_app/Components/SubNotiWidget.dart';
import 'package:noti_emp_app/Models/Notification_Model.dart';
import 'package:noti_emp_app/Views/Notifications_View.dart';

class SubNotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Notifications',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          SubNotiWidget(
            img: notiList[NotificationView.idx].img,
            from: notiList[NotificationView.idx].from,
            status: notiList[NotificationView.idx].status,
            description: notiList[NotificationView.idx].descreption,
            date: notiList[NotificationView.idx].date,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:noti_emp_app/Components/EmpWidget.dart';
import 'package:noti_emp_app/Components/NotiWidget.dart';
import 'package:noti_emp_app/Models/Employee_Model.dart';
import 'package:noti_emp_app/Models/Notification_Model.dart';
import 'package:noti_emp_app/Views/Sub_Notification_View.dart';

class NotificationView extends StatelessWidget {
  static int idx;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.grey,
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

        
        body: ListView.builder(
          itemCount: notiList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                idx = index;
                print(idx);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SubNotificationView()));
              },
              child: NotiWidget(
                img: notiList[index].img,
                from: notiList[index].from,
                status: notiList[index].status,
                description: notiList[index].descreption,
                date: notiList[index].date,
              ),
            );
          },
        ));
  }
}

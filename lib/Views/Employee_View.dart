import 'package:flutter/material.dart';
import 'package:noti_emp_app/Components/EmpWidget.dart';
import 'package:noti_emp_app/Models/Employee_Model.dart';
import 'package:noti_emp_app/Views/Sent_Notification_view.dart';

class EmpView extends StatefulWidget {
  @override
  _EmpViewState createState() => _EmpViewState();
}

class _EmpViewState extends State<EmpView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          //bottom: TabBar(
          //             tabs: [
          //               Tab(
          //                 text: 'All',
          //               ),
          //               Tab(
          //                 text: 'Subordinates',
          //               ),
          //             ],
          //             labelColor: Colors.black,
          //             indicatorColor: Colors.black,
          //           ),
          shadowColor: Colors.grey,
          title: Center(
            child: Text(
              'Employees',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.cyan,
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              text: 'All',
            ),
            Tab(
              text: 'Subordinates',
            ),
          ],
          labelColor: Colors.black,
          indicatorColor: Colors.cyan,
        ),
        body: TabBarView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SentNotificationsView()));
              },
              child: ListView.builder(
                itemCount: empList.length,
                itemBuilder: (BuildContext context, int index) {
                  return EmpWidget(
                      avatar: empList[index].img,
                      name: empList[index].name,
                      position: empList[index].position);
                },
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SentNotificationsView()));
              },
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return EmpWidget(
                      avatar: empList[3].img,
                      name: empList[3].name,
                      position: empList[3].position);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:noti_emp_app/Models/Employee_Model.dart';

class EmpWidget extends StatelessWidget {

  final String avatar , name , position;

  const EmpWidget({
   @required this.avatar,
    @required this.name,
    @required this.position,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Colors.white,
            child: Image(
              image: AssetImage(
                avatar,
              ),
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  position,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SentNotificationsView extends StatelessWidget {
  TextEditingController myController = TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            FieldContainer(myController: myController ,
              high: 70,
              head: 'Title',
              description: 'Title*',
            ),
            SizedBox(
              height: 25,
            ),
            FieldContainer(myController: myController ,
              high: 125,
              head: 'Message',
              description: 'Message*',
            ),
          ],
        ),
      ),
    );
  }
}

class FieldContainer extends StatelessWidget {
  const FieldContainer({
    @required this.myController,
    @required this.high,
    @required this.head,
    @required this.description,
  });

  final TextEditingController myController;
  final double high;
  final String head, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: high,
      child: TextField(
        controller: myController,
        obscureText: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: 75,
            left: 35,
            bottom: 10,
          ),
          labelText: head,
          hintText: description,
          labelStyle: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            gapPadding: 10,
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

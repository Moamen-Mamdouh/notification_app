import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubNotiWidget extends StatefulWidget {

  final String from , status , description , date , img;

  const SubNotiWidget({
    @required this.from,
    @required this.status,
    @required this.description,
    @required this.date,
    @required this.img,
  });

  @override
  _SubNotiWidgetState createState() => _SubNotiWidgetState();
}

class _SubNotiWidgetState extends State<SubNotiWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: 100,
          child: Row(
            children: [
              Container(
                color: Colors.white,
                child: Image(
                  image: AssetImage(
                    widget.img,
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
                      widget.from,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      widget.status,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,right: 5),
                    child: Text(
                      widget.date,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class PeriodWidget extends StatefulWidget {
  @override
  _PeriodWidgetState createState() => _PeriodWidgetState();
}

class _PeriodWidgetState extends State<PeriodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
                color: Color(0xffb3b3b3),
                blurRadius: 5,
                spreadRadius: 3,
                offset: new Offset(3, 3)),
            new BoxShadow(
                color: Color(0xffffffff),
                blurRadius: 5,
                spreadRadius: 3,
                offset: new Offset(-3, -3))
          ]),
      height: 60,
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Period:",
            style: TextStyle(fontFamily: "Open Sans", fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "Last 30 days",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  new BoxShadow(
                      color: Color(0xffb3b3b3),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: new Offset(4, 4)),
                  new BoxShadow(
                      color: Color(0xffffffff),
                      blurRadius: 5,
                      spreadRadius: 3,
                      offset: new Offset(-4, -4))
                ]),
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PieChartWidget extends StatefulWidget {
  @override
  _PieChartWidgetState createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  @override
  Widget build(BuildContext context) {
    var _generalradius = MediaQuery.of(context).size.width;
    var _outerratio = 0.55;
    var _innerratio = 0.25;
    var _secondouter = _outerratio - 0.1;
    var _secondinner = _innerratio - 0.1;

    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: _generalradius * _outerratio,
            height: _generalradius * _outerratio,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
                boxShadow: [
                  new BoxShadow(
                      color: Color(0xffb3b3b3),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: new Offset(20, 20)),
                  new BoxShadow(
                      color: Color(0xffffffff),
                      blurRadius: 5,
                      spreadRadius: 4,
                      offset: new Offset(-5, -5))
                ]),
          ),
          Container(
            width: _generalradius * _secondouter,
            height: _generalradius * _secondouter,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
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
          ),
          Container(
            width: _generalradius * _innerratio,
            height: _generalradius * _innerratio,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
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
          ),
          Container(
            width: _generalradius * _secondinner,
            height: _generalradius * _secondinner,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  new BoxShadow(
                      color: Color(0xffb3b3b3),
                      blurRadius: 10,
                      spreadRadius: -1,
                      offset: new Offset(-2, -2)),
                  new BoxShadow(
                      color: Color(0xffffffff),
                      blurRadius: 10,
                      spreadRadius: -1,
                      offset: new Offset(15, 15))
                ]),
          ),
        ],
      ),
    );
  }
}

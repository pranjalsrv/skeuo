import 'package:flutter/material.dart';
import 'package:skeuo/creditcard_page.dart';

class ButtonsPanel extends StatefulWidget {
  @override
  _ButtonsPanelState createState() => _ButtonsPanelState();
}

class _ButtonsPanelState extends State<ButtonsPanel> {
  List<bool> _isselected = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    Widget _raisedButtonWidget(var icon, int buttonindex) {
      return InkWell(
        onTap: () {
          setState(() {
            _isselected = [false, false, false, false];
            _isselected[buttonindex] = true;

            if (buttonindex == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreditCardPage()));
            }
          });
        },
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            icon,
            size: 30,
          ),
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: _isselected[buttonindex]
                  ? [
                      new BoxShadow(
                          color: Color(0xffb3b3b3),
                          blurRadius: 10,
                          spreadRadius: -1,
                          offset: new Offset(-5, -5)),
                      new BoxShadow(
                          color: Color(0xffffffff),
                          blurRadius: 10,
                          spreadRadius: -1,
                          offset: new Offset(15, 15))
                    ]
                  : [
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
        ),
      );
    }

    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _raisedButtonWidget(Icons.home, 0),
          _raisedButtonWidget(Icons.add, 1),
          _raisedButtonWidget(Icons.credit_card, 2),
          _raisedButtonWidget(Icons.settings, 3)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'models/carddetails_model.dart';

class CreditCardPage extends StatefulWidget {
  @override
  _CreditCardPageState createState() => _CreditCardPageState();
}

class _CreditCardPageState extends State<CreditCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.35,
                child: ScrollConfiguration(
                  behavior: MyBehaviour(),
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    scrollDirection: Axis.horizontal,
                    itemCount: carddetails.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: carddetails[index].backgroundColor,
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
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 20, top: 20),
                                alignment: Alignment.centerLeft,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      carddetails[index].bankLogo,
                                      color: carddetails[index].accentColor,
                                    ),
                                    Text(
                                      carddetails[index].bankName,
                                      style: TextStyle(
                                          color:
                                              carddetails[index].accentColor),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                carddetails[index].cardNumber,
                                style: TextStyle(
                                    color: carddetails[index].accentColor),
                              ),
                              Text(
                                carddetails[index].cardExpiry,
                                style: TextStyle(
                                    color: carddetails[index].accentColor),
                              ),
                              Text(
                                carddetails[index].cardholder,
                                style: TextStyle(
                                    color: carddetails[index].accentColor),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class MyBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

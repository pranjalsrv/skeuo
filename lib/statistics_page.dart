import 'package:flutter/material.dart';
import 'package:skeuo/widgets/buttonspanel_widget.dart';
import 'package:skeuo/widgets/categories_widget.dart';
import 'package:skeuo/widgets/period_widget.dart';
import 'package:skeuo/widgets/piechart_widget.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "Statistic",
              style: TextStyle(
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  letterSpacing: 1.0),
            ),
            PeriodWidget(),
            PieChartWidget(),
            CategoriesWidget(),
            ButtonsPanel()
          ],
        ),
      ),
    );
  }
}

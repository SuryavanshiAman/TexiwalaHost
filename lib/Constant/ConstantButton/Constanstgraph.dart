import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class ConstantGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body: Center(
          child: Container(
            height: 200,
            child: _buildChart(),
          ),
        ),
    );
  }

  Widget _buildChart() {
    final data = [
      LinearSales("Jan", 40),
      LinearSales("Feb", 75),
      LinearSales("Mar", 60),
      LinearSales("May", 35),
      LinearSales("Jun", 25),
      LinearSales("Jul", 50),
      LinearSales("Aug", 45),
      LinearSales("Sep", 66),
      LinearSales("Oct", 87),
      LinearSales("Nov", 40),
      LinearSales("Dec", 95),
    ];

    final chart = charts.BarChart( // Creating a BarChart
      [
        charts.Series<LinearSales, String>(
          id: 'Sales',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.month,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: data,
        ),
      ],
      animate: true,
    );

    return chart;
  }
}

class LinearSales {
  final String month;
  final int sales;

  LinearSales(this.month, this.sales);
}

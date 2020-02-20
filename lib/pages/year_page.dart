import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class YearPage extends StatefulWidget {
  @override
  _YearPageState createState() => _YearPageState();
}

class _YearPageState extends State<YearPage> {
  List<dynamic> seriesList;

  @override
  void initState() {
    super.initState();
    setState(() {
      seriesList = _createSampleData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CASE BY YEAR"),
        centerTitle: true,
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: charts.BarChart(
        seriesList,
        animate: false,
      ),)
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

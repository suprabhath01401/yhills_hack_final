import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

late MapShapeSource _dataSource;
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  void initState() {
    _dataSource = const MapShapeSource.asset(
      'assets/india-states.json',
      shapeDataField: 'name',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SfMaps(
          layers: [
            MapShapeLayer(source: _dataSource),
          ],
        ),
      ),
    );
  }
}

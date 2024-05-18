import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

/// This widget is the home page of the application.
class UsersPerCityContent extends StatefulWidget {
  /// Initialize the instance of the [UsersPerCityContent] class.
  const UsersPerCityContent({super.key});

  @override
  State<UsersPerCityContent> createState() => _UsersPerCityContentState();
}

class _UsersPerCityContentState extends State<UsersPerCityContent> {
  _UsersPerCityContentState();

  late List<Model> _data;
  late MapShapeSource _mapSource;

  @override
  void initState() {
    _data = <Model>[
      Model('Qassim', Colors.orange.withOpacity(.3), '       Qassim'),
      const Model('Riyadh', Color.fromRGBO(72, 209, 204, 1.0), 'Riyadh'),
      Model('Madinah', Colors.blue.withOpacity(.3), 'Madinah'),
      Model('Makkah', Colors.deepPurple.withOpacity(.3), 'Makkah'),
      const Model('Najran', Color.fromRGBO(79, 60, 201, 0.7), 'Najran'),
    ];

    _mapSource = MapShapeSource.asset(
      'assets/SA_regions.json',
      shapeDataField: 'name',
      dataCount: _data.length,
      primaryValueMapper: (int index) => _data[index].state,
      dataLabelMapper: (int index) => "${_data[index].stateCode}\n 40%",
      shapeColorValueMapper: (int index) => _data[index].color,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfMaps(
        layers: <MapShapeLayer>[
          MapShapeLayer(
            source: _mapSource,
            showDataLabels: true,
            legend: const MapLegend(MapElement.shape),
            /*  tooltipSettings: MapTooltipSettings(
                color: Colors.green,
                strokeColor: Colors.white,
                strokeWidth: 2), */
            strokeColor: Colors.white,
            strokeWidth: 0.2,
            color: Colors.transparent,
            shapeTooltipBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _data[index].stateCode,
                  style: const TextStyle(color: Colors.white),
                ),
              );
            },
            dataLabelSettings: MapDataLabelSettings(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.bodySmall!.fontSize),
            ),
          ),
        ],
      ),
    );
  }
}

/// Collection of Australia state code data.
class Model {
  /// Initialize the instance of the [Model] class.
  const Model(this.state, this.color, this.stateCode);

  /// Represents the Australia state name.
  final String state;

  /// Represents the Australia state color.
  final Color color;

  /// Represents the Australia state code.
  final String stateCode;
}

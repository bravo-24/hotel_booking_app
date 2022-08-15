import 'package:flutter/material.dart';

class LocationsTab extends StatefulWidget {
  const LocationsTab({Key? key}) : super(key: key);

  @override
  State<LocationsTab> createState() => _LocationsTabState();
}

class _LocationsTabState extends State<LocationsTab> {
  @override
  Widget build(BuildContext context) {
     return SafeArea(
     child: Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        )
      ],
    ));
  }
}
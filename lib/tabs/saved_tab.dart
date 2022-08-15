import 'package:flutter/material.dart';

class SavedTab extends StatefulWidget {
  const SavedTab({Key? key}) : super(key: key);

  @override
  State<SavedTab> createState() => _SavedTabState();
}

class _SavedTabState extends State<SavedTab> {
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
import 'package:flutter/material.dart';
import 'package:travel_app/widgets.dart';

class TripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RowHeading(
          heading: 'Trips',
        ),
        SearchField(),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class RepositoryCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Material(
        elevation: 5.0,
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Text('Tensorflow'),
              Text('Computation using data flow graphs for scalable machine learning'),

            ],
          ),
        ),
      ),
    );
  }
}

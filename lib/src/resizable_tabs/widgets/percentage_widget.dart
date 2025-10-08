import 'package:flutter/material.dart';

class PercentageWidget extends StatelessWidget {
  const PercentageWidget( this.value, {super.key,});

  final double value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('$value', style: TextStyle(fontSize: 34),),
    );
  }
}

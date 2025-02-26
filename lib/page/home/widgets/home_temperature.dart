import 'package:flutter/material.dart';
import 'package:weather/apps/utils/const.dart';

class HomeTemperature extends StatelessWidget {
  const HomeTemperature({super.key, required this.temp});

  final num temp;
  @override
  Widget build(BuildContext context) {
    return createTemp(temp);
  }
}

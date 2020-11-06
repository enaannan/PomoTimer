import 'package:flutter/material.dart';

class SizedBoxTrasparent extends StatelessWidget {
  const SizedBoxTrasparent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.0,
      child: Container(
        color: Colors.transparent,
      ),
    );
  }
}
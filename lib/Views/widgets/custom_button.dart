import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class CustombuttonSheet extends StatelessWidget {
  const CustombuttonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: kprimaryColor, borderRadius: BorderRadius.circular(8)),
    );
  }
}

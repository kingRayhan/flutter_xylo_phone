import 'package:flutter/material.dart';

class XyloButton extends StatelessWidget {
  late Color color;
  late void Function()? onPressed;
  late String label;

  XyloButton(
      {Key? key, required this.color, required this.label, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        child: Container(
          width: double.infinity,
          color: color,
          height: 500,
          child: Center(
              child: Text(
            label,
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}

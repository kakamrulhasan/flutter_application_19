import 'package:flutter/material.dart';

class AvailableSize extends StatefulWidget {
  final String size;
  AvailableSize({Key? key, required this.size}) : super(key: key);

  @override
  State<AvailableSize> createState() => _AvailableSizeState();
}

class _AvailableSizeState extends State<AvailableSize> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        width: 40,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.red),
        ),
        child: Text(
          "",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Home Tab",
          style: TextStyle(fontSize: 24, color: Colors.indigo),
        ),
      ),
    );
  }
}
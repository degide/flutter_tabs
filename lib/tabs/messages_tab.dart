import 'package:flutter/material.dart';

class MessagesTab extends StatelessWidget {
  const MessagesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Messages Tab",
          style: TextStyle(fontSize: 24, color: Colors.indigo),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Profile Tab",
          style: TextStyle(fontSize: 24, color: Colors.indigo),
        ),
      ),
    );
  }
}
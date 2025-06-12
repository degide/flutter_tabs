import 'package:flutter/material.dart';

class DefaultControllerScreen extends StatefulWidget {
  const DefaultControllerScreen({super.key});

  @override
  State<DefaultControllerScreen> createState() => _DefaultControllerScreenState();
}


class _DefaultControllerScreenState extends State<DefaultControllerScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Default Tab Controller"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.favorite)),
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Home Tab")),
            Center(child: Text("Favorites Tab")),
            Center(child: Text("Messages Tab")),
            Center(child: Text("Profile Tab")),
          ],
        ),
      ),
    );
  }
}
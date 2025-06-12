import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabs/tabs/profile_tab.dart';
import 'package:flutter_tabs/tabs/home_tab.dart';
import 'package:flutter_tabs/tabs/favorites_tab.dart';
import 'package:flutter_tabs/tabs/messages_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabs Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabs Example", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          isScrollable: false,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              height: 50,
              icon: Icon(Icons.home, color: Colors.white),
              child: Text("Home", style: TextStyle(color: Colors.white)),
            ),
            Tab(
              height: 50,
              icon: Icon(Icons.email, color: Colors.white),
              child: Text("Messages", style: TextStyle(color: Colors.white)),
            ),
            Tab(
              height: 50,
              icon: Icon(Icons.star, color: Colors.white),
              child: Text("Favorites", style: TextStyle(color: Colors.white)),
            ),
            Tab(
              height: 50,
              icon: Icon(Icons.person, color: Colors.white),
              child: Text("Profile", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        dragStartBehavior: DragStartBehavior.start,
        children: [
          HomeTab(),
          MessagesTab(),
          FavoritesTab(),
          ProfileTab(),
        ],
      ),
    );
  }
}

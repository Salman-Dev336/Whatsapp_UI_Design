import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Text('Whatsapp'),
        bottom: TabBar(
          tabs: [
            Text('Chat'),
            Text('Status'),
            Text('Calls'),
            Icon(Icons.camera_alt_rounded),
          ]
          ),
     ),
     body: TabBarView(
      children:[
        Text('Chat'),
         Text('Status'),
          Text('Calls'),
          Text('Camera'),
      ]
      ),
    ),
    );
  }
}
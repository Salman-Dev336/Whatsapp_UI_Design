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
         Tab(
          child: Text('Chat'),
         ),
         Tab(
          child: Text('Status'),
         ),
         Tab(
          child: Text('Calls'),
         ),
           
          Tab(
            child: Icon(Icons.camera_alt),
          )
          ]
          ),
          actions:[
            Icon(Icons.search_off_outlined),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: Icon(Icons.more_vert_sharp),
              itemBuilder: (context,) => const [
                PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                   ),
                   PopupMenuItem(
                  value: '2',
                  child: Text('New Contact'),
                   ),
                   PopupMenuItem(
                  value: '3',
                  child: Text('Setting'),
                   ),
                   PopupMenuItem(
                  value: '4',
                  child: Text('LogOut'),
                   ),


              ]),
            SizedBox(
              width: 15,
            )
          ],
     ),
     body: TabBarView(
      children:[
        ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg'),
              ),
              title: Text('Salman Khan'),
              subtitle: Text('hi where are you?'),
              trailing: Text('4:51 PM'),

            );

          }),
        Text('Status'),
          Text('Calls'),
          Text('Camera'),
      ]
      ),
    ),
    );
  }
}
import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  final List<Map<String,String>> chat=[
    {"name": "FLUTTER Batch23", "message": "Group created", "time": "6:27 PM"},
    {"name": "Ben", "message": "Hi bruh", "time": "6:13 PM"},
    {"name": "Betty Manager", "message": "Mail it when its done", "time": "5:56 PM"},
    {"name": "Mom", "message": "Had coffee???", "time": "5:35 PM"},
    {"name": "Johny Bro", "message": "Wb the meeting?", "time": "10:07 AM"},
    {"name": "Flutter Devs", "message": "Good mrng guys!", "time": "9:11 AM"},
    {"name": "Sam Bombay", "message": "Meeting with BOSS tomorrow!", "time": "Yesterday"},
    {"name": "Stacy", "message": "Call me asap", "time": "Tuesday"},
    {"name": "Andrew", "message": "Okay its fine", "time": "Monday"},
    {"name": "Sara", "message": "Hmmm", "time": "Monday"},

  ];
   ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF075E54),
        actions: [

          Icon(Icons.camera_alt,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.more_vert,color: Colors.white,),

        ],

      ),
      body:    ListView.builder(
        itemCount: chat.length,
          itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person,color: index.isEven?Colors.white:Colors.purple),
          ),
          title: Text(chat[index]['name']!,style: TextStyle(fontWeight: FontWeight.bold),), 
          subtitle:  Text(chat[index]['message']!
          ),
          trailing: Text(chat[index]['time']!,style: TextStyle(fontSize: 12),),

        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.chat,color: Colors.teal,),
          onPressed: (){
        
      }),

    );

  }
}

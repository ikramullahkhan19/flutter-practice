import 'package:flutter/material.dart';
import 'package:flutterpractice/whatApp/message_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messages = [
    {'text': "AoA", 'isSentByMe': true},
    {'text': "WS kya hal ha?", 'isSentByMe': false},
    {'text': "theek ap kese ho?", 'isSentByMe': true},
    {'text': "shukr ha ", 'isSentByMe': false},
    {'text': "AoA", 'isSentByMe': true},
    {'text': "WS kya hal ha?", 'isSentByMe': false},
    {'text': "theek ap kese ho?", 'isSentByMe': true},
    {'text': "shukr ha ", 'isSentByMe': false},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('WhatsApp',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xFF075E54)
        ,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length, // ✅ important
              itemBuilder: (context, index) {
                final message = messages[index];
                return MessageBubble(
                  text: message['text'],
                  isSentByMe: message['isSentByMe'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

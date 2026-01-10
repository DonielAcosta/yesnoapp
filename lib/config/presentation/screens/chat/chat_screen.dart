import 'package:flutter/material.dart';
import 'package:yesnoapp/config/presentation/screens/widgets/chat/her_message_bubble.dart';
import 'package:yesnoapp/config/presentation/screens/widgets/chat/my_message_bubble.dart';
import 'package:yesnoapp/config/presentation/screens/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
          ),
        ),
        // title: Center(child: Text('My Amor ')),
        title: const Text('My Amor ')
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10),
       child: Column(
        children: [
          Expanded(child: ListView.builder(
            
            itemCount: 100,
            itemBuilder:(context, index) {
            return (index % 2 == 0) ? HerMessageBubble() : MyMessageBubble();
            
          },)
         ),
        //  const SizedBox(height: 10),
        //  const Text('Matando la LIga'),
        MessageFieldBox(),
        ],
        ),
     )
    );
  }
}
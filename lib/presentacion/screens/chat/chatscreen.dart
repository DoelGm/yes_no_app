import 'package:flutter/material.dart';
import 'package:yes_no_app/presentacion/widgets/chat/her_mesagge_bubble.dart';
import 'package:yes_no_app/presentacion/widgets/chat/my_mesagge_bubble.dart';
import 'package:yes_no_app/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(90, 10, 124, 0),
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.elheraldodechiapas.com.mx/gossip/t1vzie-mc/ALTERNATES/LANDSCAPE_768/MC'),
          ),
        ),
        title: const Text('El Jefe Maestro'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const MyMesaggebubble()
                    : const HerMesaggebubble();
              },
            )),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}

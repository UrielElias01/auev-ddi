import 'package:auev_yes_no_app/domain/entities/message.dart';
import 'package:auev_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:auev_yes_no_app/presentation/widgets/chat/her_message.dart';
import 'package:auev_yes_no_app/presentation/widgets/chat/my_message.dart';
import 'package:auev_yes_no_app/presentation/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/7c/3d/7a/7c3d7a5e2ca5ebafe4346470a9efa667.jpg'),
          ),
        ),
        title: const Text('El Kirby'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: chatProvider.chatScrollController,
                itemCount: chatProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  if (message.fromWho == FromWho.me) {
                    return MyMessage(
                        message:
                            message); // Aquí usa el widget para los mensajes de "ella"
                  } else {
                    return const HerMessage(); // Aquí usa el widget para tus mensajes
                  }
                },
              ),
            ),
            MessageFieldBox(
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            )
          ],
        ),
      ),
    );
  }
}

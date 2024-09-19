import 'package:auev_yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:auev_yes_no_app/domain/entities/message.dart';
// import 'package:auev_yes_no_app/presentation/widgets/chat/her_message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messages = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'Mundo', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String value) async {
    if (value.trim().isEmpty) return;
    final newMessage = Message(text: value, fromWho: FromWho.me);

    messages.add(newMessage);

    if (value.trim().endsWith("?")) {
      herMessage();
    }

    notifyListeners();
    await moveScrollToBottom();
  }

  Future<void> herMessage() async {
    final herMessage = await getYesNoAnswer.getAnswer();

    messages.add(herMessage);
    notifyListeners();
    await moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}

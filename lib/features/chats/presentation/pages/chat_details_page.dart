import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/chat_bloc.dart';
import '../bloc/chat_event.dart';
import '../bloc/chat_state.dart';

class ChatDetailsPage extends StatefulWidget {
  final int chatId;
  final String title;
  const ChatDetailsPage({super.key, required this.chatId, required this.title});

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  final _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<ChatBloc>().add(GetChatMessages(widget.chatId));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                if (state is ChatLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is ChatMessagesLoaded) {
                  return ListView.builder(
                    reverse: true,
                    itemCount: state.messages.length,
                    itemBuilder: (context, index) {
                      final message = state.messages[state.messages.length - 1 - index];
                      return Align(
                        alignment: message.isMine ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: AppPadding.p4, horizontal: AppPadding.p8),
                          padding: const EdgeInsets.all(AppPadding.p12),
                          decoration: BoxDecoration(
                            color: message.isMine ? Theme.of(context).primaryColor : AppColors.grey300,
                            borderRadius: BorderRadius.circular(AppRadius.r12),
                          ),
                          child: Text(
                            message.body,
                            style: TextStyle(color: message.isMine ? AppColors.white : AppColors.black),
                          ),
                        ),
                      );
                    },
                  );
                } else if (state is ChatError) {
                  return Center(child: Text(state.message));
                }
                return const SizedBox();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(hintText: l10n.type_message),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    if (_messageController.text.isNotEmpty) {
                      context.read<ChatBloc>().add(
                            SendMessage(widget.chatId, _messageController.text),
                          );
                      _messageController.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

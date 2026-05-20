import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/chat_bloc.dart';
import '../bloc/chat_event.dart';
import '../bloc/chat_state.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ChatBloc>().add(const GetChats());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chats')),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          if (state is ChatLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ChatsLoaded) {
            return ListView.builder(
              itemCount: state.chats.length,
              itemBuilder: (context, index) {
                final chat = state.chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: chat.memberImage != null ? NetworkImage(chat.memberImage!) : null,
                    child: chat.memberImage == null ? const Icon(Icons.person) : null,
                  ),
                  title: Text(chat.memberName),
                  subtitle: Text(chat.lastMessageText),
                  trailing: chat.unreadCount > 0
                      ? CircleAvatar(
                          radius: 10,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Text(
                            chat.unreadCount.toString(),
                            style: const TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        )
                      : Text(chat.lastMessageDate),
                  onTap: () {
                    context.push('/chat-details/${chat.chatId}?title=${chat.memberName}');
                  },
                );
              },
            );
          } else if (state is ChatError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_estudio_2_yesnoapp/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_estudio_2_yesnoapp/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_estudio_2_yesnoapp/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.place),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a1d31e9c-fb3e-40d0-8e5e-b7aa0a4ffe0e/dg5n19f-ac5fad18-dd53-4760-a00a-4c5d8359ef7d.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2ExZDMxZTljLWZiM2UtNDBkMC04ZTVlLWI3YWEwYTRmZmUwZVwvZGc1bjE5Zi1hYzVmYWQxOC1kZDUzLTQ3NjAtYTAwYS00YzVkODM1OWVmN2QuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.4iqZWY4mJ0jfk3M1IWvPQUqETwZzJr1h1YSZzxDvIsI"),
          ),
        ),
        title: const Text("Persona"),
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
            // Expanded(
            //     child: Container(
            //   color: Colors.red,
            // )),
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const HerMessageBubble()
                    : const MyMessageBubble();
              },
            )),

            // const Text("texto1"),
            // const Text("texto2 222 ")
            //Caja de texto
            const MessageFieldBox()
          ],
        ),
      ),
    );
  }
}

import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      height: 65,
      width: 150,
      margin: const EdgeInsets.all(16),
      decoration:const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
            bottomRight: Radius.circular(24),
          )),
      child: const Text('Hi i am a new user' , style: TextStyle(color: Colors.white),),
    );
  }
}
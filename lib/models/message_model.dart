import 'package:flutter/flutter_application/models/user_model.dart';

class Message {
  final User sender;
  final String time; 
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

List<Message> chats = [
  Message(
    sender: Alberto,
    time: '16:00',
    text: 'Segunda tenho espaço na minha agenda, pode ser?',
    unread: true,
  ),
  Message(
    sender: captainAmerica,
    time: '12:00',
    text: 'Qual horário?',
    unread: false,
  ),
];
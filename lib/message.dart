import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final List<String> messages;

  Message(this.messages);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: messages.map((_element) => Card(
        child: Column(
          children: [Text(_element)],
        ),
      )).toList(),
    );
  }
}

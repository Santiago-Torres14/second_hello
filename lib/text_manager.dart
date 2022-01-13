import 'package:flutter/material.dart';

import 'message.dart';

class TextManager extends StatefulWidget{
  final String startingText;

  TextManager(this.startingText);

  @override
  State<StatefulWidget> createState(){
    return _TextManagerState();
  }
}

class _TextManagerState extends State<TextManager>{
  List<String> _messages = [];

  @override
  void initState(){
    _messages.add(widget.startingText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(10.0),
        child: ElevatedButton(
          child: const Text("Add message"),
          onPressed: (){
            setState(() {
              _messages.add("New message");
            });
          },
        ),
      ),
      Message(_messages)
    ]);
  }

}
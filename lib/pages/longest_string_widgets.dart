import 'package:flutter/material.dart';

class LongestStringWidgets extends StatelessWidget {
  const LongestStringWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Code 1")),
      body: Wrap(
        children: const [
          Chip(label: Text("I")),
          Chip(label: Text("am")),
          Chip(label: Text("looking")),
          Chip(label: Text("for")),
          Chip(label: Text("a")),
          Chip(label: Text("job")),
          Chip(label: Text("and")),
          Chip(label: Text("I")),
          Chip(label: Text("need")),
          Chip(label: Text("a")),
          Chip(label: Text("job"))
        ],
      ),
    );
  }
}

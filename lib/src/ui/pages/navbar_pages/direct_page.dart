import 'package:flutter/material.dart';
class DirectPage extends StatefulWidget {
  const DirectPage({super.key});

  @override
  State<DirectPage> createState() => _DirectPageState();
}

class _DirectPageState extends State<DirectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Direct",
          style: TextStyle(
              color: Colors.black,fontSize: 30
          ),),
      ),
    );
  }
}

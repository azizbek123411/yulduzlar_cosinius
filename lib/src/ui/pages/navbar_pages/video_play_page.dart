import 'package:flutter/material.dart';
class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key});

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("VideoPlay",
          style: TextStyle(
              color: Colors.black,fontSize: 30
          ),),
      ),
    );
  }
}

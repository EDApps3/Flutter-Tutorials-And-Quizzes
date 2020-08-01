import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(VideoFromUrl());

class VideoFromUrl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Video From Url',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video From Url'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
              child:
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Big Buck Bunny",
                    ),
                    Text(
                      "Bunny That Meet Three Bullying Rodents:Frank The Flying,Rinky And Gimera.",
                    ),
                    Videos(
                      videoPlayerController:
                      VideoPlayerController.network(
                        'https://www.w3schools.com/html/mov_bbb.mp4',
                      ),
                    ),
                  ],
                ),
              )
          ),
          Card(
              child:
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "More:",
                    ),
                    Text(
                      "Released In April 10 2008 in Amesterdam.",
                    ),
                    Videos(
                      videoPlayerController:
                      VideoPlayerController.network(
                        'https://www.w3schools.com/html/mov_bbb.mp4',
                      ),
                    ),
                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}

class Videos extends StatefulWidget {
  // This will contain the URL/asset path which we want to play
  final VideoPlayerController videoPlayerController;
  final bool looping;

  Videos({
    @required this.videoPlayerController,
    this.looping,
    Key key,
  }) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<Videos> {
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      autoInitialize: true,
      looping: widget.looping,

      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(VideoFromFile());

class VideoFromFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Video From File',
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
        title: Text('Video From File'),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height:15,),
          Card(
            child:
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text(
                     "LaLuna",
                   ),
                   Text(
                     "Little Bambino Is Excited When His Father And GrandFather Decide To Teach Him Their Family Vocation.",
                   ),
                   Videos(
                     videoPlayerController:
                     VideoPlayerController.asset(
                       'videos/LaLuna.mp4',
                     ),
                     looping: true,
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
                      "Once The Job Is Done,he Climb Down And Look To The Moon Wich Now Displays A Glowing Crescent Phase.",
                    ),
                    Videos(
                      videoPlayerController:
                      VideoPlayerController.asset(
                        'videos/LaLuna.mp4',
                      ),
                      looping: true,
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
    // Wrapper on top of the videoPlayerController
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
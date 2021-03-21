import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailScreen extends StatefulWidget {
  final String url;
  final String tag;

  const DetailScreen({Key key, this.url, this.tag}) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: Stack(
          children: [
            InteractiveViewer(
              child: Center(
                child: Hero(
                  tag: widget.tag,
                  child: GetBuilder(
                    builder: (_) => CachedNetworkImage(
                      imageUrl: widget.url,
                      placeholder: (context, url) =>
                          Image.asset("assets/images/refresh.gif"),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 20,
                right: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white54, shape: BoxShape.circle),
                    child: IconButton(
                      // color: Colors.white,
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ))
          ],
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}

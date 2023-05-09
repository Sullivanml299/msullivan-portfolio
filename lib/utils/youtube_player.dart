import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class YoutubePlayer extends StatefulWidget {
  final String source;

  const YoutubePlayer({Key? key, required this.source}) : super(key: key);

  @override
  State<YoutubePlayer> createState() => _YoutubePlayerState();
}

class _YoutubePlayerState extends State<YoutubePlayer> {
  final html.IFrameElement _iframeElement = html.IFrameElement();

  //FIXME: player controls don't scale properly
  @override
  void initState() {
    super.initState();
    _iframeElement.src = widget.source;
    _iframeElement.style.border = 'none';
    _iframeElement.style.width = '100px';
    _iframeElement.style.height = '70px';

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframeElement', (int viewId) {
      return _iframeElement;
    });
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(key: UniqueKey(), viewType: 'iframeElement');
  }
}

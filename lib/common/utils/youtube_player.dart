import 'dart:html' as html;
// import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

//FIXME: this doesn't work for updates. I need to create an iframe and then
//      update it's source. I can't just rebuild the widget because Flutter
//      will reuse the old iframe.
class YoutubePlayer extends StatefulWidget {
  final String source;

  const YoutubePlayer({Key? key, required this.source}) : super(key: key);

  @override
  State<YoutubePlayer> createState() => _YoutubePlayerState();
}

class _YoutubePlayerState extends State<YoutubePlayer> {
  late final html.IFrameElement _iframeElement = html.IFrameElement();
  HtmlElementView? view;

  @override
  void initState() {
    super.initState();
    // print(document.getElementById(widget.key.toString()));
    _iframeElement.src = widget.source;
    _iframeElement.style.border = 'none';
    _iframeElement.allowFullscreen = true;
    _iframeElement.style.width = '100%';
    _iframeElement.style.height = '100%';
    _iframeElement.id = widget.key.toString();

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframeElement', (int viewId) {
      return _iframeElement;
    });

    view = HtmlElementView(key: UniqueKey(), viewType: 'iframeElement');
  }

  @override
  Widget build(BuildContext context) {
    return view!;
  }
}

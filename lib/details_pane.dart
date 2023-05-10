import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/data/entry_data.dart';
import 'package:msullivan_portfolio/utils/color_switcher.dart';
import 'package:msullivan_portfolio/utils/youtube_player.dart';

class DetailsPane extends StatefulWidget {
  const DetailsPane(
      {Key? key,
      required this.data,
      required this.closeDetails,
      required this.player})
      : super(key: key);
  final EntryData data;
  final Function closeDetails;
  final HtmlElementView player;

  @override
  State<DetailsPane> createState() => _DetailsPaneState();
}

class _DetailsPaneState extends State<DetailsPane> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 32, 34, 34),
            boxShadow: [
              BoxShadow(blurRadius: 10, color: InheritedColor.of(context).color)
            ]),
        child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          widget.closeDetails();
                        },
                        icon: Icon(Icons.close)),
                  ],
                ),
                Text(widget.data.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: (MediaQuery.of(context).size.width * 0.4) * 0.5625,
                  child: widget.player,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: RichText(
                      text: TextSpan(
                          text: "Description: ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: widget.data.description,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal))
                      ])),
                )
              ],
            ))));
  }
}

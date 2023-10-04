import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/data/entry_data.dart';
import 'package:msullivan_portfolio/utils/color_switcher.dart';

class DetailsPane extends StatefulWidget {
  const DetailsPane(
      {Key? key,
      required this.data,
      required this.closeDetails,
      required this.player,
      required this.isMobile})
      : super(key: key);
  final EntryData data;
  final Function closeDetails;
  final HtmlElementView player;
  final bool isMobile;

  @override
  State<DetailsPane> createState() => _DetailsPaneState();
}

class _DetailsPaneState extends State<DetailsPane> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 32, 34, 34),
            boxShadow: [
              BoxShadow(blurRadius: 10, color: InheritedColor.of(context).color)
            ]),
        child: Padding(
            padding: const EdgeInsets.all(20),
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
                        icon: const Icon(Icons.close)),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: AutoSizeText(widget.data.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: widget.isMobile ? 30 : 50,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      (widget.isMobile ? 0.8 : 0.4),
                  height: (MediaQuery.of(context).size.width * 0.4) *
                      (widget.isMobile ? 1 : 0.5625),
                  child: widget.player,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: RichText(
                      text: TextSpan(
                          text: "Description: ",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: widget.data.description,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal))
                      ])),
                )
              ],
            ))));
  }
}

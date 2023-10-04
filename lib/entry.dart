import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/common/utils/color_switcher.dart';
import 'package:msullivan_portfolio/models/ModelProvider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Entry extends StatefulWidget {
  const Entry(
      {super.key, required this.project, required this.showEntryDetails});

  // final EntryData entryData;
  final Project project;
  final Function showEntryDetails;

  @override
  State<Entry> createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  double borderRadius = 10.0;
  late Image entryImage;
  late Image entryGif;
  bool hover = false;

  @override
  void initState() {
    super.initState();
    // entryImage = Image.asset(widget.entryData.imgPath, fit: BoxFit.fill);
    // entryGif = Image.asset(widget.entryData.gifPath, fit: BoxFit.fill);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius),
      highlightColor: InheritedColor.of(context).color,
      hoverColor: InheritedColor.of(context).color.withAlpha(10),
      onHover: (value) {
        setState(() {
          hover = value;
        });
      },
      onTap: () {
        widget.showEntryDetails(widget.project);
      },
      child: buildEntryCard(),
    );
  }

  Widget buildEntryCard() {
    return Card(
        color: Color.fromARGB(255, 36, 37, 37),
        elevation: 10,
        shadowColor: InheritedColor.of(context).color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            children: [
              SizedBox(
                height: constraints.maxHeight * 0.75,
                width: constraints.maxWidth,
                child: buildPreview(),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.25,
                width: constraints.maxWidth,
                child: buildDetails(),
              )
            ],
          );
        }));
  }

  Widget buildPreview() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius)),
      child: hover
          ? CachedNetworkImage(
              errorWidget: (context, url, dynamic error) =>
                  const Icon(Icons.error_outline_outlined),
              imageUrl: widget.project.projectGifUrl!,
              cacheKey: widget.project.projectGifKey,
              // width: double.maxFinite,
              // height: 500,
              // alignment: Alignment.topCenter,
              fit: BoxFit.fill,
            )
          : CachedNetworkImage(
              errorWidget: (context, url, dynamic error) =>
                  const Icon(Icons.error_outline_outlined),
              imageUrl: widget.project.projectImageUrl!,
              cacheKey: widget.project.projectImageKey,
              // width: double.maxFinite,
              // height: 500,
              // alignment: Alignment.topCenter,
              fit: BoxFit.fill,
            ),
    );
  }

  Widget buildDetails() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Center(
            child: AutoSizeText(
          widget.project.projectName,
          style: TextStyle(fontSize: 30),
        )));
  }
}

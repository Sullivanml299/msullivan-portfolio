import 'package:flutter/material.dart';
import 'package:msullivan_portfolio/config.dart';
import 'package:msullivan_portfolio/data/entry_data.dart';
import 'package:msullivan_portfolio/details_pane.dart';
import 'package:msullivan_portfolio/entry_grid.dart';
import 'package:msullivan_portfolio/header.dart';
import 'package:msullivan_portfolio/resume.dart';
import 'package:msullivan_portfolio/utils/custom_components.dart';
import 'footer.dart';
import 'utils/color_switcher.dart';
import 'dart:html';
import 'dart:ui' as ui;
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ColorSwitcher(initialColor: UnityColor, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: MainTheme,
      home: SelectionArea(child: Portfolio()),
    );
  }
}

class Portfolio extends StatefulWidget {
  Portfolio({super.key});

  final IFrameElement _iframeElement = IFrameElement();

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  Image headerImg =
      Image.asset('assets/images/U_Logo_T1_MadeWith_Small_White_RGB.png');
  DisplayType displayType = DisplayType.unity;
  bool showDetails = false;
  bool showResume = false;
  EntryData? selectedEntry;
  HtmlElementView? htmlElementView;

  @override
  void initState() {
    super.initState();
    _setupiFrame();
  }

  @override
  Widget build(BuildContext context) {
    if (showDetails) updateiFrame(selectedEntry!.youtubeLink);
    return Scaffold(
      appBar: _builAppBar(),
      drawer: _isMobile()
          ? Drawer(
              child: ListView(children: _getCustomButtons()),
            )
          : null,
      body: showResume
          ? Resume(
              isMobile: _isMobile(),
            )
          : _buildBody(),
      bottomNavigationBar: Footer(),
    );
  }

  AppBar _builAppBar() {
    if (_isMobile()) {
      return AppBar();
    } else {
      return AppBar(
        title: _buildAboutMeButton(),
        actions: _getCustomButtons(),
      );
    }
  }

  Widget _buildAboutMeButton() {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 10, vertical: (_isMobile() ? 20 : 5)),
      child: TextButton(
        onPressed: () {
          setState(() {
            showResume = true;
          });
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.transparent,
        ),
        child: RichText(
            text: TextSpan(
                text: 'About Me',
                style: GoogleFonts.silkscreen(
                    fontSize: 30, color: Colors.blueAccent))),
        // style: GoogleFonts.vt323(fontSize: 40),
      ),
    );
  }

  Widget _buildBody() {
    if (_isMobile()) return _buildMobileBody();
    if (showDetails) {
      return Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: [
                Header(img: headerImg),
                EntryGrid(
                    entryList: _getEntryList(),
                    showEntryDetails: showEntryDetails,
                    isMobile: _isMobile()),
              ],
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.5,
              child: DetailsPane(
                key: UniqueKey(),
                data: selectedEntry!,
                closeDetails: hideEntryDetails,
                player: htmlElementView!,
                isMobile: _isMobile(),
              )),
        ],
      );
    } else {
      return Column(
        children: [
          Header(img: headerImg),
          EntryGrid(
              entryList: _getEntryList(),
              showEntryDetails: showEntryDetails,
              isMobile: _isMobile()),
        ],
      );
    }
  }

  Widget _buildMobileBody() {
    if (showDetails) {
      return DetailsPane(
        key: UniqueKey(),
        data: selectedEntry!,
        closeDetails: hideEntryDetails,
        player: htmlElementView!,
        isMobile: _isMobile(),
      );
    } else {
      return Column(
        children: [
          Header(img: headerImg),
          EntryGrid(
              entryList: _getEntryList(),
              showEntryDetails: showEntryDetails,
              isMobile: _isMobile()),
        ],
      );
    }
  }

  List<EntryData> _getEntryList() {
    switch (displayType) {
      case DisplayType.unity:
        return UnityEntryList;
      case DisplayType.unreal:
        return UnrealEntryList;
      case DisplayType.webgl:
        return WebglEntryList;
      case DisplayType.ludum:
        return LudumDareEntryList;
      default:
        return UnityEntryList;
    }
  }

  void showEntryDetails(EntryData data) {
    setState(() {
      selectedEntry = data;
      showDetails = true;
    });
  }

  void hideEntryDetails() {
    setState(() {
      selectedEntry = null;
      showDetails = false;
    });
  }

  List<Widget> _getCustomButtons() {
    return [
      CustomAppBarButton(
          img: Image.asset(
              'assets/images/U_Logo_T1_MadeWith_Small_White_RGB.png'),
          onPressed: () {
            InheritedColor.switchColor(context, UnityColor);
            setState(() {
              headerImg = Image.asset(
                  'assets/images/U_Logo_T1_MadeWith_Small_White_RGB.png');
              displayType = DisplayType.unity;
              showResume = false;
            });
            hideEntryDetails();
          },
          isMobile: _isMobile()),
      // CustomAppBarButton(
      //     img: Image.asset(
      //         'assets/images/UE_Logo_horizontal_unreal-engine_white.png'),
      //     onPressed: () {
      //       InheritedColor.switchColor(context, UEColor);
      //       setState(() {
      //         headerImg = Image.asset(
      //             'assets/images/UE_Logo_horizontal_unreal-engine_white.png');
      //         displayType = DisplayType.unreal;
      //         showResume = false;
      //       });
      //       hideEntryDetails();
      //     }),
      CustomAppBarButton(
          img: Image.asset('assets/images/WebGL-Logo.png'),
          onPressed: () {
            InheritedColor.switchColor(context, WebglColor);
            setState(() {
              headerImg = Image.asset('assets/images/WebGL-Logo.png');
              displayType = DisplayType.webgl;
              showResume = false;
            });
            hideEntryDetails();
          },
          isMobile: _isMobile()),
      // CustomAppBarButton(
      //     img: Image.asset('assets/images/ludum_dare.png'),
      //     onPressed: () {
      //       InheritedColor.switchColor(context, LudumColor);
      //       setState(() {
      //         headerImg = Image.asset('assets/images/ludum_dare.png');
      //         displayType = DisplayType.ludum;
      //         showResume = false;
      //       });
      //       hideEntryDetails();
      //     }),
      _isMobile() ? _buildAboutMeButton() : Container(),
    ];
  }

  bool _isMobile() {
    return MediaQuery.of(context).size.width < 1200;
  }

  void _setupiFrame() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('iframeElement', (int viewId) {
      return widget._iframeElement;
    });
  }

  //FIXME: fullscreen won't work. Could be that going fullscreen causes the iframe to be rebuild.
  void updateiFrame(String url) {
    widget._iframeElement.src = url;
    widget._iframeElement.style.border = 'none';
    widget._iframeElement.style.width = '100%';
    widget._iframeElement.style.height = '100%';
    widget._iframeElement.allowFullscreen = false;
    htmlElementView = HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: _buildAboutMe(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: _buildResumeCard(context),
        )
      ],
    );
  }

  Widget _buildAboutMe() {
    return SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ABOUT ME",
                              style: GoogleFonts.abel(
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            _buildContactInfo(),
                          ],
                        )),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: RichText(
                    softWrap: true,
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "I am an aspiring game designer and programmer."
                          " Video games have been the most positive force in my life."
                          " They have generated irreplaceable experiences that would be impossible to replicate in any other medium."
                          " I can still remember the first time I managed to get into the center of Giant's Deep in Outer Wilds."
                          " I didn't follow a quest marker or a waypoint, I just saw a the jellyfish traversing the barrier and reasoned that I could probably hitch a ride."
                          " This sense of discovery and exploration is what I want to bring to others through my work."
                          " This site was programmed using flutter and includes a few prototypes I have made along with example game design documents and a resume.",
                      style:
                          GoogleFonts.abel(fontSize: 30, color: Colors.white),
                    )))
          ],
        ));
  }

  Widget _buildContactInfo() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      RichText(
          text: TextSpan(
              text: "Email: ",
              style: GoogleFonts.abel(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              children: [
            TextSpan(
                text: "sullivanml299@gmail.com",
                style: GoogleFonts.abel(color: Colors.blueAccent, fontSize: 20),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    final Uri email =
                        Uri(scheme: 'mailto', path: 'sullivanml299@gmail.com');
                    launchUrl(email);
                  })
          ]))
    ]);
  }

  Widget _buildResumeCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .07, vertical: 50),
      child: Card(
          elevation: 10,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'EDUCATION\n',
                    style: GoogleFonts.vt323(
                        fontSize: 60, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      buildEducation(
                          "Drexel University",
                          "MS in Software Engineering",
                          "June 2021 - March 2023",
                          "4.0"),
                      buildEducation(
                          "Drexel University",
                          "MS in Computer Science",
                          "June 2021 - March 2023",
                          "3.98"),
                    ]),
                TextSpan(
                  text: '\nEMPLOYMENT\n',
                  style: GoogleFonts.vt323(
                      fontSize: 60, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    buildEmployment(
                        "Alliance Pharma",
                        "Manager of IT and Lab Operations",
                        "July 2019 - March 2020"),
                    buildEmployment("Alliance Pharma", "IT Specialist",
                        "December 2017 - July 2019"),
                    buildEmployment(
                        "Alliance Pharma",
                        "Quality Control Specialist",
                        "October 2016 - July 2017"),
                  ],
                ),
              ]),
            ),
          )),
    );
  }

  TextSpan buildEducation(
      String university, String degree, String dates, String gpa) {
    return TextSpan(
      text: '$university\n',
      style: GoogleFonts.abel(fontSize: 40),
      children: <TextSpan>[
        TextSpan(text: '$degree\n', style: GoogleFonts.abel(fontSize: 30)),
        TextSpan(text: '$dates\n', style: GoogleFonts.abel(fontSize: 20)),
        TextSpan(text: "GPA: $gpa\n\n", style: GoogleFonts.abel(fontSize: 20)),
      ],
    );
  }

  TextSpan buildEmployment(String employer, String position, String dates) {
    return TextSpan(
      text: '$employer\n',
      style: GoogleFonts.abel(fontSize: 40),
      children: <TextSpan>[
        TextSpan(text: '$position\n', style: GoogleFonts.abel(fontSize: 30)),
        TextSpan(text: '$dates\n\n', style: GoogleFonts.abel(fontSize: 20)),
      ],
    );
  }
}

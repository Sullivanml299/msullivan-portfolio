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
          child: _buildAboutMe(context),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: _buildResumeCard(context),
        )
      ],
    );
  }

  Widget _buildAboutMe(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                height: 220,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
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
                            _buildContactInfo(context),
                          ],
                        )),
                  ],
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: RichText(
                    softWrap: true,
                    textAlign: TextAlign.left,
                    selectionRegistrar: SelectionContainer.maybeOf(context),
                    selectionColor: Colors.white10,
                    text: TextSpan(
                      style:
                          GoogleFonts.abel(fontSize: 25, color: Colors.white),
                      children: <TextSpan>[
                        const TextSpan(
                            text:
                                "This site is intended to act as a portfolio and show off a few of the projects that I have worked on."
                                " More recently, I've been focusing on leveraging modern technologies"
                                " to create new gameplay mechanics that I haven't seen before in games."
                                " For example, I am currently working on a project that uses Convolutional Neural Networks to"
                                " classify player-drawn magical runes, in real time."
                                " Take a look at the"),
                        TextSpan(
                          text: " Made with Unity",
                          style: GoogleFonts.abel(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 229, 255)),
                        ),
                        const TextSpan(
                            text:
                                " tab in the top right to see the prototype in action!"
                                "\n\nThe site itself was programmed using Flutter and is hosted as a static page on AWS S3."
                                "\nIf you have any questions or comments, please feel free to reach out to me at the email above."),
                      ],
                    )))
          ],
        ));
  }

  Widget _buildContactInfo(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      RichText(
          selectionRegistrar: SelectionContainer.maybeOf(context),
          selectionColor: Colors.white10,
          text: TextSpan(children: [
            TextSpan(
                text: "Game Programmer and Designer.\n",
                style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: "Name:",
                style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: " Marcus Sullivan\n",
                      style: GoogleFonts.abel(fontWeight: FontWeight.normal)),
                ]),
            TextSpan(
                text: "Email: ",
                style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: "sullivanml299@gmail.com\n",
                      style: GoogleFonts.abel(
                          color: Colors.blueAccent, fontSize: 20),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          final Uri email = Uri(
                              scheme: 'mailto',
                              path: 'sullivanml299@gmail.com');
                          launchUrl(email);
                        })
                ]),
            TextSpan(
                text: "Resume: ",
                style: GoogleFonts.abel(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: "Google Drive",
                      style: GoogleFonts.abel(
                          color: Colors.blueAccent, fontSize: 20),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          final Uri site = Uri.parse(
                              "https://docs.google.com/document/d/1fNqWOetONRjfrvVZ0yJCr0ZCiNP20uc2Hr8QEzNvPoE/edit?usp=sharing");
                          launchUrl(site);
                        })
                ])
          ]))
    ]);
  }

  //TOOD: add tab controller and put each section in a tab
  Widget _buildResumeCard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .07, vertical: 50),
      child: Card(
          elevation: 10,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: RichText(
              selectionRegistrar: SelectionContainer.maybeOf(context),
              selectionColor: Colors.white10,
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: 'EDUCATION\n\n',
                    style: GoogleFonts.vt323(
                        fontSize: 60, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Drexel University\n",
                        style: GoogleFonts.vt323(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      buildEducation("MS in Software Engineering",
                          "June 2021 - March 2023", "4.0"),
                      buildEducation("MS in Computer Science",
                          "June 2021 - March 2023", "3.98"),
                      buildEducation(
                          "Post-Baccalaureate Certificate\nin Computer Science",
                          "March 2020 - December 2020",
                          "4.0")
                    ]),
                TextSpan(
                  text: '\nEMPLOYMENT\n\n',
                  style: GoogleFonts.vt323(
                      fontSize: 60, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Alliance Pharma\n",
                      style: GoogleFonts.vt323(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    buildEmployment("Manager of IT and Lab Operations",
                        "July 2019 - March 2020"),
                    buildEmployment(
                        "IT Specialist", "December 2017 - July 2019"),
                    buildEmployment("Quality Control Specialist",
                        "October 2016 - July 2017"),
                  ],
                ),
              ]),
            ),
          )),
    );
  }

  TextSpan buildEducation(String degree, String dates, String gpa) {
    return TextSpan(
      style: GoogleFonts.abel(fontSize: 40),
      children: <TextSpan>[
        TextSpan(text: '$degree\n', style: GoogleFonts.abel(fontSize: 30)),
        TextSpan(text: '$dates\n', style: GoogleFonts.abel(fontSize: 20)),
        TextSpan(text: "GPA: $gpa\n\n", style: GoogleFonts.abel(fontSize: 20)),
      ],
    );
  }

  TextSpan buildEmployment(String position, String dates) {
    return TextSpan(
      style: GoogleFonts.abel(fontSize: 40),
      children: <TextSpan>[
        TextSpan(text: '$position\n', style: GoogleFonts.abel(fontSize: 30)),
        TextSpan(text: '$dates\n\n', style: GoogleFonts.abel(fontSize: 20)),
      ],
    );
  }
}

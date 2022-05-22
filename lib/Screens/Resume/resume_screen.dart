import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:html' as html;

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  Future<void> downloadCV() async {
    var bytes = await rootBundle
        .load("resume/myresume.pdf"); // location of your asset file

    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    html.AnchorElement anchorElement = html.AnchorElement(href: url);

    anchorElement.download = "MyResume";

    anchorElement.click();
  }

  Future<void> showCV() async {
    var bytes = await rootBundle
        .load("resume/myresume.pdf"); // location of your asset file

    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);

    html.window.open(url, "_blank");
    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: ListTile(
        title: Text(
          "CV",
          style: Theme.of(context).textTheme.headline2,
        ),
        subtitle: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  foregroundDecoration:
                      BoxDecoration(color: Colors.black.withOpacity(.3)),
                  decoration: const BoxDecoration(color: Colors.white),
                  height: 200,
                  width: 200,
                  child: SvgPicture.asset(
                    "resume/myresume.svg",
                    placeholderBuilder: (ctx) {
                      return const CircularProgressIndicator.adaptive();
                    },
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextButton(
                  onPressed: () async {
                    await showCV();
                  },
                  child: Text(
                    "Yeni Sekmede aç",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  style: TextButton.styleFrom(
                      shape: const StadiumBorder(),
                      side: const BorderSide(color: Colors.white, width: .2),
                      padding: const EdgeInsets.all(15),
                      elevation: 5,
                      backgroundColor: Colors.accents[0]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: TextButton(
                  onPressed: () async {
                    await downloadCV();
                  },
                  child: Text(
                    "İndir",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  style: TextButton.styleFrom(
                      shape: const StadiumBorder(),
                      side: const BorderSide(color: Colors.white, width: .2),
                      padding: const EdgeInsets.all(15),
                      elevation: 5,
                      backgroundColor: Colors.accents[0]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

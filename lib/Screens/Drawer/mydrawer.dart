import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF172a32),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const MyInformation(),
          const MySocialAccounts(),
          const MyInfoRow(
            icon: Icons.mail_rounded,
            text: "rasityilmaz@yaani.com",
            trailing: null,
          ),
          const MyInfoRow(
            icon: Icons.call,
            text: "+90 531 305 90 95",
            trailing: null,
          ),
          const MyInfoRow(
            icon: Icons.school,
            text: "Fırat Üniversitesi\nYazılım Mühendisliği",
            trailing: "2.54 / 4.0",
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Made with Flutter",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    "icons/Icon-512.png",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? trailing;
  const MyInfoRow({
    Key? key,
    required this.icon,
    required this.text,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              icon,
              color: const Color(0xFF2a454b),
            ),
          ),
          Expanded(
            flex: 9,
            child: ListTile(
              title: SelectableText(
                text,
                style: const TextStyle(color: Colors.white60),
              ),
              trailing: trailing != null
                  ? Text(
                      trailing!,
                      style: const TextStyle(color: Colors.white60),
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}

class MyInformation extends StatelessWidget {
  const MyInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.height * .25,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
                image: const DecorationImage(
                  filterQuality: FilterQuality.high,
                  image: AssetImage("images/me.webp"),
                ),
                shape: BoxShape.circle),
          ),
          const SizedBox(
            height: 40,
          ),
          AutoSizeText(
            "Muhammed Raşit Yılmaz",
            maxFontSize: 45,
            textAlign: TextAlign.center,
            style: GoogleFonts.italianno(fontSize: 40, color: Colors.white),
          ),
          const AutoSizeText(
            "- Software Engineer",
            maxFontSize: 40,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white60),
          ),
          const AutoSizeText(
            "- Flutter Developer",
            maxFontSize: 40,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white60),
          ),
        ],
      ),
    );
  }
}

class MySocialAccounts extends StatelessWidget {
  const MySocialAccounts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        children: [
          const Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  iconSize: 30,
                  onPressed: () {
                    js.context.callMethod('open',
                        ['https://www.linkedin.com/in/mrasityilmaz-1998/']);
                  },
                  icon: SvgPicture.asset("icons/linkedin.svg")),
              IconButton(
                  iconSize: 30,
                  onPressed: () {
                    js.context.callMethod(
                        'open', ['https://github.com/mrasityilmaz']);
                  },
                  icon: SvgPicture.network(
                    "https://upload.wikimedia.org/wikipedia/commons/9/91/Octicons-mark-github.svg",
                    color: Colors.black,
                  )),
            ],
          ),
          const Divider(
            thickness: 3,
          ),
        ],
      ),
    );
  }
}

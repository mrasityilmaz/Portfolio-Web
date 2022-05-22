import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolyo/Model/contribution_model.dart';

contributionDialog(BuildContext context, ContributionModel model) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        backgroundColor: const Color(0xFF172a32),
        title: Row(
          children: [
            Text(
              model.appOrTaskName,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Spacer(),
            TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close_rounded,
                  color: Colors.white,
                ),
                label: Text(
                  "Kapat",
                  style: Theme.of(context).textTheme.headline6,
                ),
                style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.white, width: .2),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    elevation: 5,
                    backgroundColor: Colors.accents[0])),
          ],
        ),
        contentPadding: EdgeInsets.zero,
        content: SizedBox(
          width: MediaQuery.of(context).size.width * .6,
          height: MediaQuery.of(context).size.height * .7,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: model.photoPaths.isEmpty
                    ? const FlutterLogo(
                        size: 200,
                        style: FlutterLogoStyle.horizontal,
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        shrinkWrap: true,
                        itemCount: model.photoPaths.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "contributions/${model.photoPaths[index]}",
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      ),
              ),
              Expanded(
                  flex: 4,
                  child: Align(
                    alignment: Alignment.center,
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      title: AutoSizeText(
                        "Açıklama",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      subtitle: AutoSizeText(
                        model.myContributionsDesc,
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                  ))
            ],
          ),
        )));

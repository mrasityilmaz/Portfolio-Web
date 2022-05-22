import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'dart:js' as js;

import '../../../Model/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectsModel model;
  const ProjectWidget({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        js.context.callMethod('open', [model.projectUrl]);
      },
      child: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
                width: MediaQuery.of(context).size.width / 5,
                foregroundDecoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(14)),
                    color: Colors.black.withOpacity(.1),
                    boxShadow: kElevationToShadow[4],
                    image: DecorationImage(
                        image: AssetImage(
                            "projects" + model.backplanPhotosAssetsPath[0]))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          "projects" + model.backplanPhotosAssetsPath[1],
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "projects" + model.backplanPhotosAssetsPath[2],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF172a32).withOpacity(.5),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(14),
                    )),
                child: Center(
                  child: AutoSizeText(
                    model.projectDescription,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

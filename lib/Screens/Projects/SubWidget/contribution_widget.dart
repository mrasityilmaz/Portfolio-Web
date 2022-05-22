import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolyo/Model/contribution_model.dart';

import '../../../Widgets/dialogs.dart';

class ContributionWidget extends StatelessWidget {
  final ContributionModel model;
  final int index;
  const ContributionWidget(
      {Key? key,
      required this.model,
      required this.onHoverIndex,
      required this.index})
      : super(key: key);

  final ValueNotifier<int?> onHoverIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ValueListenableBuilder(
        valueListenable: onHoverIndex,
        builder: (BuildContext context, int? value, Widget? child) {
          return InkWell(
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              contributionDialog(context, model);
            },
            onHover: (onHovered) {
              if (onHovered) {
                onHoverIndex.value = index;
              } else {
                onHoverIndex.value = null;
              }
            },
            child: AnimatedContainer(
              padding: value != null && value == index
                  ? const EdgeInsets.all(10)
                  : EdgeInsets.zero,
              duration: const Duration(milliseconds: 150),
              width: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(14)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: model.photoPaths.isEmpty
                            ? const FlutterLogo(
                                style: FlutterLogoStyle.horizontal,
                              )
                            : Image.asset(
                                "contributions/${model.photoPaths[0]}",
                                fit: BoxFit.fill,
                              )),
                    Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 7,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                color: Colors.white.withOpacity(.2),
                                child: AutoSizeText(
                                  model.myContributionsDesc,
                                  textAlign: TextAlign.left,
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.black.withOpacity(.3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    model.appIcon != null
                                        ? Image.asset(model.appIcon!)
                                        : Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(14),
                                              child: Image.asset(
                                                "icons/Icon-512.png",
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                          ),
                                    AutoSizeText(
                                      model.appOrTaskName,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

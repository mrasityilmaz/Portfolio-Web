import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolyo/all_data.dart';

import 'SubWidget/carousel_widget.dart';
import 'SubWidget/contribution_widget.dart';

class ProjectPage extends StatelessWidget {
  ProjectPage({
    Key? key,
  }) : super(key: key);

  final CarouselController controller = CarouselController();
  final ValueNotifier<int?> onHoverIndex = ValueNotifier(null);
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 55,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: ListTile(
                minVerticalPadding: 0,
                contentPadding: EdgeInsets.zero,
                title: Text(
                  "Projelerim",
                  style: Theme.of(context).textTheme.headline2,
                ),
                subtitle: CarouselWidget(
                  controller: controller,
                ),
              ),
            )),
        Expanded(
            flex: 45,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text(
                  "Katkıda bulunduklarım",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              subtitle: ListView.builder(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .1),
                scrollDirection: Axis.horizontal,
                itemCount: myContributions.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContributionWidget(
                    model: myContributions[index],
                    onHoverIndex: onHoverIndex,
                    index: index,
                  );
                },
              ),
            )),
      ],
    );
  }
}

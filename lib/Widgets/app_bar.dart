import 'package:flutter/material.dart';
import 'package:portfolyo/constants.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final ValueNotifier<int> currentPageIndex = ValueNotifier(0);
  final PageController pageController;

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(.05),
      actions: [
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: currentPageIndex,
            builder: (BuildContext context, int value, Widget? child) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(
                    appBarButtons.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextButton(
                        onPressed: () {
                          pageController
                              .animateToPage(index,
                                  duration: const Duration(milliseconds: 1000),
                                  curve: Curves.fastOutSlowIn)
                              .whenComplete(
                                  () => currentPageIndex.value = index);
                        },
                        child: Text(
                          appBarButtons[index],
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        style: TextButton.styleFrom(
                            side: const BorderSide(
                                color: Colors.white, width: .2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            elevation: 5,
                            backgroundColor: (value) == index
                                ? Colors.accents[0]
                                : const Color(0xFF172a32).withOpacity(.1)),
                      ),
                    ),
                  ));
            },
          ),
        )
      ],
      elevation: 0,
    );
  }
}

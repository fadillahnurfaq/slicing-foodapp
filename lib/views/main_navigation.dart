import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slicing_foodapp/controllers/main_navigation_controller.dart';
import 'package:slicing_foodapp/utils/color.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    Widget customBottomNav() {
      return Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ValueListenableBuilder<int>(
          valueListenable: MainNavigationController.currentIndex,
          builder: (_, v, __) {
            return ListView.builder(
              itemCount: MainNavigationController.listOfIcons.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  MainNavigationController.onTap(index);
                  HapticFeedback.lightImpact();
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width:
                          index == v ? displayWidth * .26 : displayWidth * .17,
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: index == v ? displayWidth * .13 : 0,
                              ),
                              AnimatedOpacity(
                                opacity: index == v ? 1 : 0,
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child: Text(
                                  index == v
                                      ? MainNavigationController
                                          .listOfStrings[index]
                                      : '',
                                  style: TextStyle(
                                    color: orangeColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                width: index == v ? displayWidth * .03 : 20,
                              ),
                              Icon(
                                MainNavigationController.listOfIcons[index],
                                size: displayWidth * .060,
                                color:
                                    index == v ? orangeColor : Colors.black26,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      bottomNavigationBar: customBottomNav(),
      body: ValueListenableBuilder<int>(
        valueListenable: MainNavigationController.currentIndex,
        builder: (_, v, __) {
          return MainNavigationController.widgetOptions.elementAt(v);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

Widget bottomNavigation(BuildContext context) {
  var currentIndex = 0;
  Size size = MediaQuery.of(context).size;

  const listOfIcons = [
    Icons.home_rounded,
    Icons.home_rounded,
    Icons.home_rounded,
    Icons.home_rounded,
    Icons.home_rounded,
  ];

  return Container(
    margin: const EdgeInsets.all(20),
    height: size.width * .155,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(.15),
          blurRadius: 30,
          offset: const Offset(0, 10),
        ),
      ],
      borderRadius: BorderRadius.circular(50),
    ),
    child: ListView.builder(
      itemCount: listOfIcons.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: size.width * .024),
      itemBuilder: (context, index) => InkWell(
        onTap: () {},
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 1500),
              curve: Curves.fastLinearToSlowEaseIn,
              margin: EdgeInsets.only(
                bottom: index == currentIndex ? 0 : size.width * .029,
                right: size.width * .0211,
                left: size.width * .0211,
              ),
              width: size.width * .128,
              height: index == currentIndex ? size.width * .014 : 0,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(10),
                ),
              ),
            ),
            Icon(
              listOfIcons[index],
              size: size.width * .076,
              color: index == currentIndex ? Colors.blueAccent : Colors.black38,
            ),
            SizedBox(height: size.width * .03),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  final AnimationController animationController;

  const FirstView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _FirstViewState createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    final introductionAnimation =
        Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: const Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    return SlideTransition(
      position: introductionAnimation,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 160,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 350, maxHeight: 250),
              child: Image.asset(
                'assets/introduction/img1.png',
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                "ECCコンピュータ専門学校\n学生向けアプリ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 64, right: 64),
              child: Text(
                "学校公式アプリの不満点を調査し、\n結果を元に開発された非公式アプリです",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            InkWell(
              onTap: () {
                widget.animationController.animateTo(0.2);
              },
              child: Container(
                height: 58,
                padding: const EdgeInsets.only(
                  left: 56.0,
                  right: 56.0,
                  top: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38.0),
                  color: Theme.of(context).primaryColor,
                ),
                child: const Text(
                  "使い方を見る",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

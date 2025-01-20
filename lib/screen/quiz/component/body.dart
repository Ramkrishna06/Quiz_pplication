import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_application/constants.dart';
import 'package:quiz_application/module/Question.dart';
import 'package:quiz_application/screen/quiz/component/progressbar.dart';

import 'QuestionCard.dart';
import 'option.dart';

class Body extends StatelessWidget {
  const Body({super.key});

//quiz body
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/icons/bg.png",
            ),
          )),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                const ProgressBar(),
                const SizedBox(
                  height: 20,
                ),
                Text.rich(
                  TextSpan(
                      text: "Question 1",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: "/10",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: kSecondaryColor),
                        ),
                      ]),
                ),
                const Divider(
                  color: kSecondaryColor,
                ),
                const SizedBox(
                  height: kDefaultPadding/2,
                ),
                Expanded(
                  child: PageView.builder(
                    itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(5), child: QuestionCard()),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

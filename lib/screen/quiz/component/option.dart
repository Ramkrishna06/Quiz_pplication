import 'package:flutter/cupertino.dart';

import '../../../constants.dart';

class Option extends StatelessWidget {
  const Option({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kGrayColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("1. test"),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              border: Border.all(color: kGrayColor),
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ],
      ),
    );
  }
}

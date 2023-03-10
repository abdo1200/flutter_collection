import 'package:flutter/material.dart';
import 'package:flutter_collection/smart%20switch/slider_container.dart';

import 'globals.dart';

class SmartSwitch extends StatelessWidget {
  const SmartSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Global.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: Global.homeItems.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: SliderContainerWidget(
                          index: index,
                          color: Global.mediumBlue,
                        ),
                      );
                    }))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

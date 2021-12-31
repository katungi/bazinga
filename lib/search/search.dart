import 'package:avatar_glow/avatar_glow.dart';
import 'package:bazinga/search/search.controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Search extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Scaffold(
          backgroundColor: Colors.black12,
          body: Container(
            height: Get.height,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tap to Bazinga',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 40,
                ),
                controller.isListening.value
                    ? AvatarGlow(
                        endRadius: 200,
                        animate: true,
                        child: SearchButton(),
                        repeat: true,
                        showTwoGlows: true,
                        glowColor: Colors.orange,
                      )
                    : SearchButton(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget SearchButton() {
    return GestureDetector(
      onTap: () => toggleState(),
      child: (Material(
        shape: CircleBorder(),
        elevation: 8,
        child: Container(
          padding: EdgeInsets.all(40),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.orangeAccent[200]),
          child: Image.asset(
            'assets/images/ghost-3.png',
            color: Colors.white,
          ),
        ),
      )),
    );
  }

  toggleState() {
    controller.isListening.value = !controller.isListening.value;
  }
}

import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      padding: const EdgeInsets.all(50),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DSText(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae est sit amet mi volutpat venenatis. Mauris vitae tincidunt lacus. Proin pulvinar tempus erat eleifend condimentum. In id venenatis ligula. Sed tempor auctor augue, a viverra ipsum pellentesque nec. Vestibulum urna nisi, scelerisque nec fermentum eu, efficitur non eros. Integer porttitor cursus metus. Suspendisse potenti.'),
          SizedBox(
            height: 10,
          ),
          DSText(
            'Mauris varius congue dictum. Nam sollicitudin metus nec lacus pharetra condimentum. In mauris ligula, dapibus vitae pretium at, ullamcorper a ligula. Aliquam facilisis nulla quis auctor eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque sagittis risus luctus, mollis felis nec, ornare justo. Maecenas arcu nulla, venenatis ut euismod vel, feugiat non massa. Nullam aliquam volutpat hendrerit. Quisque nec felis sed nulla fringilla luctus. Aenean vehicula commodo dapibus. In vehicula elit purus, et cursus magna convallis ac. Nam lacinia nisl vitae lectus pulvinar, vel maximus dui eleifend. Mauris sed tincidunt nibh, nec volutpat ligula.',
            maxLines: 10,
          ),
        ],
      ),
    )));
  }
}

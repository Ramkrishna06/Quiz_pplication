import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  // Animation for progress bar
  late final AnimationController _animationController;
  late final Animation<double> _animation;

  final int totalduration=60;

  // Getter to access the animation outside
  Animation<double> get animation => _animation;

  int get remainingTime {
    // Calculate the remaining time based on the animation value
    return (totalduration * (1 - _animation.value)).ceil();
  }


  @override
  void onInit() {
    super.onInit();

    // Initialize the AnimationController
    _animationController = AnimationController(
      duration: const Duration(seconds: 60),
      vsync: this,
    );

    // Define the Tween for the progress bar animation
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update(); // Trigger GetX's state update
      });

    // Start the animation
    _animationController.forward();
  }

  @override
  void onClose() {
    // Dispose of the AnimationController to release resources
    _animationController.dispose();
    super.onClose();
  }
}


enum ButtonState {
  idle,
  loading,
  success,
}

class AnimatedButtonController {
  void Function(ButtonState state)? setState;
  ButtonState Function()? getState;
}

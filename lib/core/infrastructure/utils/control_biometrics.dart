import 'package:design_system/core/infrastructure/utils/local_storage.dart';
import 'package:local_auth/local_auth.dart';

const String biometricsLabel = 'biometria';
const String biometricsActivatedLabel = 'biometriaAtivada';
const String biometricsDisabledLabel = 'biometriaDesativada';

class ControlBiometrics {
  static activateBiometric() async {
    await LocalStorage()
        .writeStorage(biometricsLabel, biometricsActivatedLabel);
  }

  static disableBiometrics() async {
    await LocalStorage().writeStorage(biometricsLabel, biometricsDisabledLabel);
  }

  static Future<bool> biometricsAlreadyActivated() async {
    final biometriaStatus = await LocalStorage().readStorage(biometricsLabel);
    return biometricsActivatedLabel == biometriaStatus ||
        biometriaStatus == 'true';
  }

  static Future<bool> needDisplayScreenBiometrics() async {
    return !(await LocalStorage().hasStorage(biometricsLabel));
  }

  static Future<bool> deviceHasBiometrics() async {
    bool deviceHasBiometrics = await LocalAuthentication().canCheckBiometrics;
    return deviceHasBiometrics;
  }

  static Future<bool> authenticate() async {
    if (await deviceHasBiometrics()) {
      return await _authenticateUser();
    }
    return false;
  }

  static Future<bool> _authenticateUser() async {
    try {
      bool isAuthenticated = await LocalAuthentication().authenticate(
        localizedReason: "Use a biometria para prosseguir",
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
      return isAuthenticated;
    } catch (ex) {
      return false;
    }
  }
}

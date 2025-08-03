import 'package:design_system/core/infrastructure/validators/boolean_validator.dart';
import 'package:design_system/core/infrastructure/validators/cep_validator.dart';
import 'package:design_system/core/infrastructure/validators/cns_validator.dart';
import 'package:design_system/core/infrastructure/validators/code_validator.dart';
import 'package:design_system/core/infrastructure/validators/cpf_validator.dart';
import 'package:design_system/core/infrastructure/validators/date_validator.dart';
import 'package:design_system/core/infrastructure/validators/email_validator.dart';
import 'package:design_system/core/infrastructure/validators/height_validator.dart';
import 'package:design_system/core/infrastructure/validators/integer_validator.dart';
import 'package:design_system/core/infrastructure/validators/json_map_validator.dart';
import 'package:design_system/core/infrastructure/validators/nome_validator.dart';
import 'package:design_system/core/infrastructure/validators/number_validator.dart';
import 'package:design_system/core/infrastructure/validators/password_validator.dart';
import 'package:design_system/core/infrastructure/validators/phone_validator.dart';
import 'package:design_system/core/infrastructure/validators/route_validator.dart';
import 'package:design_system/core/infrastructure/validators/simple_list_validator.dart';
import 'package:design_system/core/infrastructure/validators/url_validator.dart';
import 'package:design_system/core/infrastructure/validators/weight_validator.dart';

class DSValidateField {
  static bool fromType(DSValidatorType type, String value,
      {List<String>? blockList}) {
    final nomeValidator = NomeValidator();

    switch (type) {
      case DSValidatorType.cep:
        final cpfValidator = CepValidator();
        return cpfValidator.valid(value);

      case DSValidatorType.cpf:
        final cpfValidator = CpfValidator();
        return cpfValidator.valid(value);

      case DSValidatorType.nome:
        return nomeValidator.valid(value, blockList);

      case DSValidatorType.nomeSimples:
        return nomeValidator.valid(value, blockList);

      case DSValidatorType.notEmpty:
        return value.isNotEmpty;
      case DSValidatorType.phone:
      case DSValidatorType.nis:
        final phoneValidator = PhoneValidator();
        return phoneValidator.valid(value);

      case DSValidatorType.email:
        final emailValidator = EmailValidator();
        return emailValidator.valid(value);

      case DSValidatorType.password:
        final passwordValidator = PasswordValidator();
        return passwordValidator.valid(value);

      case DSValidatorType.code:
        final codeValidator = CodeValidator();
        return codeValidator.valid(value);

      case DSValidatorType.date:
        final dateValidator = DateValidator();
        return dateValidator.valid(value);

      case DSValidatorType.dateTime:
        final dateTimeValidator = DateValidator();
        return dateTimeValidator.valid(value);
      case DSValidatorType.cns:
        final cnsValidator = CnsValidator();
        return cnsValidator.valid(value);
      case DSValidatorType.weight:
        final weightValidator = WeightValidator();
        return weightValidator.valid(value);
      case DSValidatorType.height:
        final heightValidator = HeightValidator();
        return heightValidator.valid(value);
      case DSValidatorType.url:
        final urlValidator = UrlValidator();
        return urlValidator.valid(value);
      case DSValidatorType.route:
        final routeValidator = RouteValidator();
        return routeValidator.valid(value);
      case DSValidatorType.jsonMap:
        final jsonMapValidator = JsonMapValidator();
        return jsonMapValidator.valid(value);
      case DSValidatorType.number:
        final numberValidator = NumberValidator();
        return numberValidator.valid(value);
      case DSValidatorType.integer:
        final integerValidator = IntegerValidator();
        return integerValidator.valid(value);
      case DSValidatorType.boolean:
        final booleanValidator = BooleanValidator();
        return booleanValidator.valid(value);
      case DSValidatorType.simpleListValidator:
        final simpleListValidator = SimpleListValidator();
        return simpleListValidator.valid(value);
    }
  }
}

enum DSValidatorType {
  cep,
  cpf,
  nome,
  nomeSimples,
  phone,
  email,
  notEmpty,
  nis,
  password,
  code,
  date,
  dateTime,
  weight,
  height,
  url,
  route,
  jsonMap,
  number,
  integer,
  boolean,
  simpleListValidator,
  cns
}

import 'package:design_system/core/components/atoms/field_mask_type/ds_field_mask_type.dart';
import 'package:design_system/core/components/atoms/field_validator_type/ds_fields_validatos_type.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/shake/ds_shake_error.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_input.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_custom_form_map.dart';
import 'package:design_system/core/components/organisms/form/domain/entities/ds_type_of_input.dart';
import 'package:design_system/core/components/organisms/form/presentation/page/ds_custom_form.dart';
import 'package:flutter/material.dart';

class DesignSystemFormPage extends StatefulWidget {
  const DesignSystemFormPage({super.key});

  @override
  State<DesignSystemFormPage> createState() => _DesignSystemFormPageState();
}

class _DesignSystemFormPageState extends State<DesignSystemFormPage> {
  final ValueNotifier loadingController = ValueNotifier(false);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController dataNascimentoController =
      TextEditingController();
  final TextEditingController dataRangeController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController sexoController = TextEditingController();
  final TextEditingController cepController = TextEditingController();
  final TextEditingController enderecoController = TextEditingController();
  final TextEditingController numeroController = TextEditingController();
  final TextEditingController complementoController = TextEditingController();
  final TextEditingController bairroController = TextEditingController();
  final TextEditingController cidadeController = TextEditingController();
  final TextEditingController ufController = TextEditingController();

  // Animação para campos obrigatórios
  final GlobalKey<DSShakeErrorState> nomeShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> cpfShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> dataNascimentoShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> dataRangeShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> timeShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> telefoneShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> emailShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> sexoShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> cepShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> enderecoShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> numeroShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> complementoShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> bairroShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> cidadeShakeKey = GlobalKey();
  final GlobalKey<DSShakeErrorState> ufShakeKey = GlobalKey();

  bool validate = false;

  @override
  void initState() {
    super.initState();
    isValid;
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> isValid() async {
    setState(() {
      validate = true;
    });

    if (!formKey.currentState!.validate()) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: loadingController,
      builder: (context, child) => Scaffold(
        body: loadingController.value
            ? SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).highlightColor),
                  ),
                ),
              )
            : AnimatedBuilder(
                animation: nomeController,
                builder: (context, child) => SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 24),
                            child: DSText(
                              'Informe seus dados para cadastro abaixo. Campos identificados com * são obrigatórios',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                          DSCustomForm(
                              customFormMap: DSCustomFormMap(
                            formKey: formKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            listDSCustomFormInput: <DSCustomFormInput>[
                              DSCustomFormInput(
                                typeOfInput: DSTypeOfInput.name,
                                controller: nomeController,
                                hintText: 'Nome',
                                shakeKey: nomeShakeKey,
                                validate: validate,
                                blockList: ['PUTINHA', 'XXX', 'A MESMA'],
                              ),
                              DSCustomFormInput(
                                  typeOfInput: DSTypeOfInput.cpf,
                                  controller: cpfController,
                                  hintText: 'CPF',
                                  shakeKey: cpfShakeKey,
                                  validate: validate),
                              DSCustomFormInput(
                                  typeOfInput: DSTypeOfInput.date,
                                  controller: dataNascimentoController,
                                  hintText: 'Data de nascimento',
                                  shakeKey: dataNascimentoShakeKey,
                                  validate: validate),
                              DSCustomFormInput(
                                typeOfInput: DSTypeOfInput.date,
                                controller: dataRangeController,
                                hintText: 'Escolha um range de datas.',
                                shakeKey: dataRangeShakeKey,
                                validate: validate,
                                isRangePicker: true,
                              ),
                              DSCustomFormInput(
                                typeOfInput: DSTypeOfInput.time,
                                controller: timeController,
                                hintText: 'Escolha um horário.',
                                shakeKey: timeShakeKey,
                                validate: validate,
                              ),
                              DSCustomFormInput(
                                typeOfInput: DSTypeOfInput.phone,
                                controller: telefoneController,
                                hintText: 'Telefone',
                                shakeKey: telefoneShakeKey,
                                validate: validate,
                              ),
                              DSCustomFormInput(
                                typeOfInput: DSTypeOfInput.email,
                                controller: emailController,
                                hintText: 'E-mail',
                                shakeKey: emailShakeKey,
                                validate: validate,
                              ),
                              DSCustomFormInput(
                                typeOfInput: DSTypeOfInput.dropDown,
                                controller: sexoController,
                                hintText: 'Sexo',
                                shakeKey: sexoShakeKey,
                                dropDownOptions: [
                                  'Masculino',
                                  'Feminino',
                                  'Outro'
                                ],
                                validate: validate,
                              ),
                              DSCustomFormInput(
                                typeOfInput: DSTypeOfInput.cep,
                                controller: cepController,
                                hintText: 'CEP',
                                shakeKey: cepShakeKey,
                                validate: validate,
                                suffixWidget: Column(
                                  children: [
                                    const SizedBox(height: 8),
                                    DSButton(
                                      onTap: () async {},
                                      buttonText: 'Buscar CEP',
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                ),
                              ),
                              DSCustomFormInput(
                                  typeOfInput: DSTypeOfInput.custom,
                                  hintText: 'Endereço',
                                  readOnly: false,
                                  keyboardType: TextInputType.none,
                                  controller: enderecoController,
                                  required: true,
                                  validate: validate,
                                  validatorType: DSValidatorType.notEmpty,
                                  validationMessage:
                                      'Informe um endereço válido',
                                  shakeKey: enderecoShakeKey,
                                  width: MediaQuery.of(context).size.width < 600
                                      ? double.infinity
                                      : MediaQuery.of(context).size.width *
                                          0.595),
                              DSCustomFormInput(
                                  typeOfInput: DSTypeOfInput.houseNumber,
                                  hintText: 'Número',
                                  controller: numeroController,
                                  shakeKey: numeroShakeKey,
                                  width: MediaQuery.of(context).size.width < 600
                                      ? double.infinity
                                      : MediaQuery.of(context).size.width *
                                          0.1),
                              DSCustomFormInput(
                                  typeOfInput: DSTypeOfInput.dropDown,
                                  hintText: 'UF',
                                  controller: ufController,
                                  shakeKey: ufShakeKey,
                                  required: true,
                                  dropDownOptions: ['SP', 'MG'],
                                  maskType: DSFieldMaskType.uf,
                                  validationMessage: 'Informe uma UF válida',
                                  width: MediaQuery.of(context).size.width < 600
                                      ? double.infinity
                                      : MediaQuery.of(context).size.width *
                                          0.1),
                              DSCustomFormInput(
                                  typeOfInput: DSTypeOfInput.dropDown,
                                  hintText: 'Cidade',
                                  controller: cidadeController,
                                  shakeKey: cidadeShakeKey,
                                  required: true,
                                  dropDownOptions: ['Guarulhos', 'São Paulo'],
                                  maskType: DSFieldMaskType.uf,
                                  validationMessage:
                                      'Informe uma cidade válida',
                                  width: MediaQuery.of(context).size.width < 600
                                      ? double.infinity
                                      : MediaQuery.of(context).size.width *
                                          0.595),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
